package com.petportal.base.web;

import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.search.*;
import java.io.IOException;
import java.util.Properties;
import java.util.regex.*;
import java.util.logging.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class EmailReader {
    private static final Logger logger = Logger.getLogger(EmailReader.class.getName());

    public EmailReader() {
        // Constructor remains empty
    }

    public String getOTP() throws MessagingException, IOException {
        String username = getEnvironmentVariable("EMAIL_USERNAME");
        String password = getEnvironmentVariable("EMAIL_PASSWORD");
        String emailServer = "imap.gmail.com";

        logger.info("Fetching OTP from unread emails...");

        String htmlContent = readContent(username, password, emailServer);
        String otp = extractOTPFromHtml(htmlContent);

        if (otp != null) {
            return otp;
        }
        return "No valid OTP found";
    }

    private String readContent(String username, String password, String emailServer)
            throws MessagingException, IOException {

        Properties props = new Properties();
        props.setProperty("mail.store.protocol", "imaps");
        String htmlContent = "";

        try (Store store = Session.getDefaultInstance(props, null).getStore("imaps")) {
            store.connect(emailServer, username, password);

            try (Folder inbox = store.getFolder("INBOX")) {
                inbox.open(Folder.READ_WRITE);
                Message[] messages = inbox.search(new FlagTerm(new Flags(Flags.Flag.SEEN), false));

                if (messages.length == 0) {
                    logger.warning("No unread messages found.");
                    return htmlContent;
                }

                Message latestMessage = messages[messages.length - 1];
                htmlContent = getHtmlContent(latestMessage);
                latestMessage.setFlag(Flags.Flag.SEEN, true);
            }
        }
        return htmlContent;
    }

    private String getHtmlContent(Message message) throws MessagingException, IOException {
        if (message.isMimeType("text/html")) {
            return message.getContent().toString();
        }

        if (message.isMimeType("multipart/*")) {
            MimeMultipart mp = (MimeMultipart) message.getContent();
            for (int i = 0; i < mp.getCount(); i++) {
                BodyPart part = mp.getBodyPart(i);
                if (part.isMimeType("text/html")) {
                    return part.getContent().toString();
                }
            }
        }
        return "";
    }

    private String extractOTPFromHtml(String html) {
        if (html.isEmpty()) {
            logger.warning("No HTML content found in email");
            return null;
        }

        try {
            Document doc = Jsoup.parse(html);
            // Target OTP div with specific styling
            Elements otpDivs = doc.select("div[style*='font-family:Poppins,monospace']" +
                    "[style*='font-size:27px']" +
                    "[style*='font-weight:700']");

            for (Element div : otpDivs) {
                String potentialOtp = div.text().trim();
                if (isValidOTP(potentialOtp)) {
                    logger.info("Valid OTP found: " + potentialOtp);
                    return potentialOtp;
                }
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Error parsing HTML content", e);
        }
        return null;
    }

    private boolean isValidOTP(String otp) {
        return otp.matches("\\d{6}") &&
                !otp.equals("555555") &&
                !otp.equals("333333");
    }

    // Existing helper methods
    private String getEnvironmentVariable(String key) {
        String value = System.getenv(key);
        if (value == null || value.isEmpty()) {
            value = io.github.cdimascio.dotenv.Dotenv.load().get(key);
        }
        return value;
    }

    // Retained for backward compatibility
    public String readContentByReceiverEmail(String username, String password,
                                             String regex, String emailServer,
                                             String receiverEmail) throws MessagingException, IOException {
        // Implementation similar to readContent() but with sender filter
        // Can be updated to use HTML parsing if needed
        Properties props = new Properties();
        props.setProperty("mail.store.protocol", "imaps");
        String extractedContent = "";

        try (Store store = Session.getDefaultInstance(props, null).getStore("imaps")) {
            store.connect(emailServer, username, password);

            try (Folder inbox = store.getFolder("INBOX")) {
                inbox.open(Folder.READ_WRITE);
                SearchTerm searchTerm = new AndTerm(
                        new FlagTerm(new Flags(Flags.Flag.SEEN), false),
                        new FromStringTerm(receiverEmail)
                );

                Message[] messages = inbox.search(searchTerm);
                if (messages.length == 0) return extractedContent;

                Message latestMessage = messages[messages.length - 1];
                extractedContent = getHtmlContent(latestMessage);
                latestMessage.setFlag(Flags.Flag.SEEN, true);
            }
        }
        return extractOTPFromHtml(extractedContent);
    }
}