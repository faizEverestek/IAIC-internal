package com.petportal.base.web.steps;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

import com.petportal.base.web.EmailReader;
import com.petportal.base.web.utilities.*;
import io.cucumber.java.*;
import io.cucumber.java.en.And;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.petportal.base.web.AbstractPage;
import com.petportal.base.web.BrowserType;
import com.petportal.base.web.ConfigurationFactory;
import com.petportal.base.web.EnvironmentType;
import com.petportal.base.web.PageRegistry;
import com.petportal.base.web.WebDriverFatory;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.MessagingException;
import java.io.File;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Base64;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import static com.petportal.base.web.utilities.CSVModifier.modifyFile;
import static com.petportal.base.web.utilities.GroupCreatorQA1.newGroupName1;
import static com.petportal.base.web.utilities.GroupCreatorQA2.newGroupName2;


/**
 * This step file contains generic reusable steps for web application testing.
 */

public class WebSteps {

    /**
     * The AES key for encryption.
     */
    private static final String AES_KEY = "1234567890123456";

    /**
     * The environment.
     */
    private static final String ENV = "ENV";

    /**
     * The web driver.
     */
    private static WebDriver driver;

    /**
     * The testUtils.
     */
    private static TestUtils testUtils;

    /**
     * The properties.
     */
    private static Properties properties;

    /**
     * Map to hold test data for sharing across multiple steps and pages.
     */
    private Map<String, String> testData = new HashMap<>();

    /**
     * The email reader.
     */
    private EmailReader emailReader = new EmailReader();

    /**
     * The random number generator.
     */
    private Random random = new Random();

    private String getGroupNumber;

    /**
     * The web page.
     */
    private AbstractPage currentPage;

    /**
     * The env type.
     */
    private static EnvironmentType envType;

    /**
     * This method gets the web driver and launches the browser with configured URL.
     */
    @BeforeAll
    public static void setupApplication() {
        envType = EnvironmentType
                .valueOf(System.getProperty(ENV) != null ? System.getProperty(ENV) : "QA");
        properties = ConfigurationFactory.createProperties(envType);
        if (driver == null) {
            driver = WebDriverFatory.createWebDriver(BrowserType.valueOf(properties.getProperty("browser")),
                    properties);
            driver.manage().window().maximize();
            
            if ("true".equals(properties.getProperty("headless"))) {
                driver.manage().window().setSize(new Dimension(1920, 1080));
            }
            driver.get(properties.getProperty("url"));
            String[] packages = properties.getProperty("packages").replaceAll("\\s+", "").split(",");
            PageRegistry.init(driver, packages);
            testUtils = new TestUtils(driver);
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
            // Wait for the username field to be visible and send keys
            WebElement usernameField = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//input[@id='username']")));
            usernameField.sendKeys(properties.getProperty("username"));
            // Wait for the submit button to be clickable and click
            WebElement submitButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//button[@type='submit']")));
            submitButton.click();
            // Wait for the password field to be visible and send keys
            WebElement passwordField = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//input[@id='password']")));
            passwordField.sendKeys(properties.getProperty("password"));
            // Wait for the submit button to be clickable and click
            WebElement passwordSubmitButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//button[@type='submit']")));
            passwordSubmitButton.click();
        }
    }

    /**
     * This method sets up the test scenario by populating the testData map with
     * configuration properties. This method reads properties from the 'properties'
     * object and stores them in the 'testData' map with the prefix "config:" added
     * to each property key.
     */
    @Before
    public void setupScenario() {
        for (String key : properties.stringPropertyNames()) {
            testData.put("config:" + key, properties.getProperty(key));
        }
    }

    /**
     * This method takes the screenshot of failed scenarios and attach them in
     * reports.
     *
     * @param scenario The current scenario under execution.
     */
    @AfterStep
    public static void attachScreenshot(Scenario scenario) throws WebDriverException {
        if (scenario.isFailed()) {
            byte[] fileContent = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
            scenario.attach(fileContent, "image/png", "image");
        }
    }

    /**
     * This method closes the browser after execution of scenarios.
     */
    @AfterAll
    public static void closeApplication() {
        if (driver != null) {
            driver.quit();
        }
    }

    /**
     * This method is used to get all elements from pages class.
     *
     * @param pageName Name of the page.
     */
    @Given("web browser is landed on the {string}")
    public void browserLandsOnPage(String pageName) {
        System.out.println(pageName);
        currentPage = PageRegistry.getPageByName(pageName);
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        Assert.assertNotNull(currentPage);
    }

    /**
     * This method is used to click on elements.
     *
     * @param elementName Name of the element to be clicked on the page.
     */
    @When("{string} is clicked")
    public void clickOnElement(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(element));
        testUtils.scrollUptoElementDisplay(element);
        try {
            element.click();
        } catch (ElementClickInterceptedException e) {
            // Fallback: click via JS
            ((JavascriptExecutor) driver).executeScript("arguments[0].click();", element);
        }
    }

    /**
     * This method is used to click on elements using JS executor.
     *
     * @param elementName Name of the element to be clicked on the page.
     */
    @When("{string} is clicked using JS executor")
    public void clickOnElementUsingJSExecutor(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        testUtils.scrollUptoElementDisplay(element);
        ((JavascriptExecutor) driver).executeScript("arguments[0].click()", element);
    }

    /**
     * This method is used to enter text in input field.
     *
     * @param text      Text to be entered in the field.
     * @param fieldName Name of the field.
     */
    @When("{string} is entered in {string}")
    public void enterText(String text, String fieldName) {
        WebElement textField = currentPage.elements().get(fieldName);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(textField));
        testUtils.scrollUptoElementDisplay(textField);
        textField.clear();
        textField.sendKeys(text);
        try {
            Thread.sleep(10000); // Static wait for 10 seconds
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt(); // Restore interrupted state
            throw new RuntimeException(e);
        }
    }

    @When("Enter the email address of the newly added employee in the {string}")
    public void enterText(String fieldName) {
        WebElement textField = currentPage.elements().get(fieldName);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(textField));
        testUtils.scrollUptoElementDisplay(textField);
        textField.clear();
        AddEmployeeUS addEmployeeUS = new AddEmployeeUS(driver);
        String email = addEmployeeUS.email;
        try {
            Thread.sleep(10000); // Static wait for 10 seconds
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt(); // Restore interrupted state
            throw new RuntimeException(e);
        }
        textField.sendKeys(email);
    }

    /**
     * This method is used to deselect the radio button and check box.
     *
     * @param fieldName
     */
    @Then("{string} is marked as deselected")
    public void deselectCheckBoxOrRadio(String fieldName) {
        WebElement checkBoxOrRadioButton = currentPage.elements().get(fieldName);
        testUtils.scrollUptoElementDisplay(checkBoxOrRadioButton);
        Assert.assertFalse(checkBoxOrRadioButton.isSelected());
    }

    /**
     * This method is used for imposing explicit wait.
     *
     * @param seconds The number of seconds to wait.
     * @param reason  The reason for wait.
     * @throws InterruptedException In case wait is interrupted.
     */
    @When("wait for {int} seconds {string}")
    public void waitForOperation(int seconds, String reason) throws InterruptedException {
        Thread.sleep(seconds * 1000L);
    }

    /**
     * This method is used to verify the element is displayed.
     *
     * @param fieldName Name of the field displayed on the page.
     */
    @Then("{string} is displayed")
    public void elementDisplay(String fieldName) {
        WebElement element = currentPage.elements().get(fieldName);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(element));
        testUtils.scrollUptoElementDisplay(element);
        Assert.assertTrue(element.isDisplayed());
    }

    /**
     * This method is used to navigate back to previous page.
     */
    @When("browser is navigated to previous page")
    public void navigateToPrivousPage() {
        driver.navigate().back();
    }

    /**
     * This method is used to select the radio button and check box.
     *
     * @param fieldName Name of the field.
     */
    @Then("{string} is marked as selected")
    public void selectCheckBoxOrRadio(String fieldName) {
        WebElement checkBoxOrRadioButton = currentPage.elements().get(fieldName);
        testUtils.scrollUptoElementDisplay(checkBoxOrRadioButton);
        Assert.assertTrue(checkBoxOrRadioButton.isSelected());
    }

    /**
     * This method enters a random digit number starting with a specified value into
     * a text field.
     *
     * @param digit      The number of digits in the random number.
     * @param startsWith The value with which the generated number should start.
     * @param fieldName  The name or identifier of the text field where the number
     *                   will be entered.
     */
    @When("{int} digit number starting with {int} is entered in {string} and stored into {string}")
    public void enterRandomNumber(int digit, int startsWith, String fieldName, String testDataKey) {
        WebElement textField = currentPage.elements().get(fieldName);
        textField.clear();
        int count = digit;
        int min = (int) Math.pow(10, count - 1.0);
        int max = (int) Math.pow(10, count) - 1;
        int randomnumber = random.nextInt(max - min + 1) + min;
        String number = startsWith + Integer.toString(randomnumber);
        textField.sendKeys(number);
        testData.put(testDataKey, number);
    }

    /**
     * This method generates a random 4-digit number and appends it to the provided
     * name. The resulting text is then entered into the specified text field
     * element.
     *
     * @param name      The base name to be combined with the random 4-digit number.
     * @param fieldName The name or identifier of the text field element.
     */
    @When("random name {string} is entered in {string}")
    public void enterRandomName(String name, String fieldName) {
        WebElement textField = currentPage.elements().get(fieldName);
        textField.clear();
        int randomNumber = random.nextInt(9000) + 1000;
        String text = name + randomNumber;
        textField.sendKeys(text);
    }

    /**
     * This method enters the provided date into the specified text field element
     * and simulates the pressing of the Enter key.
     *
     * @param date      The date to be entered in the specified format.
     * @param fieldName The name or identifier of the text field element.
     */
    @When("{string} is entered in {string} and ENTER key is pressed")
    public void enterDateAndPressEnter(String date, String fieldName) {
        WebElement textField = currentPage.elements().get(fieldName);
        textField.sendKeys(date);
        textField.sendKeys(Keys.ENTER);
    }

    /**
     * This method generates a random 4-digit number and appends it to the username
     * part of the provided email address. It then enters the modified email address
     * into the specified text field element.
     *
     * @param email     The base email address with the format
     *                  "username@domain.com".
     * @param fieldName The name or identifier of the text field element.
     */
    @When("random email {string} is entered in {string}")
    public void enteremail(String email, String fieldName) {
        WebElement element = currentPage.elements().get(fieldName);
        int randomNumber = random.nextInt(9000) + 1000;
        String[] parts = email.split("@");
        if (parts.length == 2) {
            String username = parts[0];
            String domain = parts[1];
            String modifiedEmail = username + "+" + randomNumber + "@" + domain;
            element.sendKeys(modifiedEmail);
        }
    }

    /**
     * This method locates the dropdown element specified by 'fieldName' and
     * iterates through its options to find the option with the provided 'text'. If
     * a matching option is found, it is selected by clicking it.
     *
     * @param text      The visible text of the option to be selected.
     * @param fieldName The name or identifier of the drop down element.
     */
    @When("{string} is selected from custom dropdown {string}")
    public void selectValueFromDropdown(String text, String fieldName) {
        List<WebElement> element = currentPage.elementsGroup().get(fieldName);
        for (int i = 0; i < element.size(); i++) {
            if (element.get(i).getText().equals(text)) {
                element.get(i).click();
            }
        }
    }

    /**
     * This method uploads a file specified by the file path to a web element with
     * the given field name.
     *
     * @param filepath  The relative or absolute path to the file to be uploaded.
     * @param fieldName The name or identifier of the web element where the file
     *                  will be uploaded.
     */
    @When("{string} is uploaded at {string}")
    public void fileUpload(String filepath, String fieldName) {
        filepath = filepath.replace("\\", File.separator);
        WebElement element = currentPage.elements().get(fieldName);
        element.sendKeys(System.getProperty("user.dir") + File.separator + filepath);
    }

    /**
     * This method is used to get required data from receiver email and put into
     * test data by given key.
     *
     * @param name          Content name.
     * @param receiverEmail Receiver email.
     * @param testDataKey   Key for test data.
     * @param regex         The regular expression.
     * @throws IOException
     * @throws MessagingException
     */
    @When("latest email received on {string} is read and {string} is read into {string} using regex {string}")
    public void readContentOfReciversEmailByRegex(String receiverEmail, String name, String testDataKey, String regex) throws MessagingException, IOException {
        String emailServer = properties.getProperty("email-server");
        String email = properties.getProperty("email");
        String appPassword = properties.getProperty("appPassword");
        String content = emailReader.readContentByReceiverEmail(email, appPassword, regex, emailServer, receiverEmail);
        testData.put(testDataKey, content);
    }

    /**
     * This method is used to get test data by given key and open it in a browser.
     *
     * @param testDataKey Key for test data.
     * @throws IOException
     * @throws MessagingException
     */
    @When("URL is read by test data key {string} and opened in browser")
    public void readURLFromTestDataAndOpenInBrowser(String testDataKey) {
        String requestHyperlink = testData.get(testDataKey);
        driver.get(requestHyperlink);
    }

    /**
     * This method reads text content from the test data using the provided test
     * data key and enters that text content into a web page field specified by the
     * field name.
     *
     * @param name        A descriptive name or identifier for this step.
     * @param testDataKey The key to retrieve the text content from the test data.
     * @param fieldName   The name or identifier of the web page field where the
     *                    text content will be entered.
     */
    @When("{string} is read by test data key {string} and entered in {string}")
    public void readTextFromTestDataAndEnterInField(String name, String testDataKey, String fieldName) {
        String text = testData.get(testDataKey);
        WebElement element = currentPage.elements().get(fieldName);
        element.sendKeys(text);
    }

    /**
     * This method extracts text from the element identified by 'fieldName' and
     * enters it into the element identified by 'location'.
     *
     * @param fieldName The name or identifier of the element from which to extract
     *                  text.
     * @param location  The name or identifier of the element into which the text
     *                  should be entered.
     */
    @When("{string} is obtained from {string} and entered into {string}")
    public void textFromLocationIsObtainedAndEntered(String text, String fieldName, String location) {
        WebElement displayedTextLocator = currentPage.elements().get(fieldName);
        String displayedText = displayedTextLocator.getText();
        WebElement entertextlocator = currentPage.elements().get(location);
        entertextlocator.sendKeys(displayedText);
    }

    /**
     * This method decrypts the provided encrypted 'text' using the AES algorithm
     * with a predefined secret key. The decrypted password is then entered into the
     * specified text field element.
     *
     * @param text      The encrypted password to be decrypted and entered.
     * @param fieldName The name or identifier of the text field element.
     * @throws IllegalBlockSizeException
     * @throws BadPaddingException
     * @throws NoSuchAlgorithmException
     * @throws NoSuchPaddingException
     * @throws InvalidKeyException
     */
    @When("encrypted {string} is entered in {string}")
    public void addPassword(String text, String fieldName) throws IllegalBlockSizeException, BadPaddingException,
            NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException {
        SecretKeySpec secretKey = new SecretKeySpec(AES_KEY.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(Cipher.DECRYPT_MODE, secretKey);
        byte[] decryptedBytes = cipher.doFinal(Base64.getDecoder().decode(text));
        String password = new String(decryptedBytes);
        WebElement element = currentPage.elements().get(fieldName);
        element.sendKeys(password);
    }

    /**
     * This method retrieves the handles of all open windows or tabs and iterates
     * through them to identify the child window (other than the parent window). It
     * then switches the WebDriver's focus to the child window, allowing subsequent
     * actions to be performed in that window.
     */
    @When("focus is switched to current window")
    public void switchToCurrentWindow() {
        String parent = driver.getWindowHandle();
        Set<String> windowIds = driver.getWindowHandles();
        Iterator<String> iter = windowIds.iterator();
        while (iter.hasNext()) {
            String childWindow = iter.next();
            if (!parent.equals(childWindow)) {
                driver.switchTo().window(childWindow);
            }
        }
    }

    /**
     * This method is used to switch to alert and accept and reject the alert.
     *
     * @param text Action need to perform on alert
     */
    @When("displayed alert is {string}")
    public void switchToAlert(String text) {
        Alert a = driver.switchTo().alert();
        if (text.equals("ACCEPTED")) {
            a.accept();
        } else if (text.equals("REJECTED")) {
            a.dismiss();
        }
    }

    /**
     * This method uses JavaScript to set the zoom level of the web page content.
     * The zoom level is specified using the provided 'zoomPercentage'. A higher
     * percentage value zooms in, while a lower value zooms out.
     *
     * @param zoomPercentage The zoom percentage to apply to the web page content.
     */
    @When("browser is zoomed to {string} %")
    public void browserIsZoomed(String zoomPercentage) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("document.body.style.zoom = '" + zoomPercentage + "';");
    }

    /**
     * This method is used to clear text from given field.
     *
     * @param fieldName Name of the field.
     */
    @When("text from {string} is cleared")
    public void clearText(String fieldName) {
        WebElement element = currentPage.elements().get(fieldName);
        element.clear();
    }

    /**
     * This method is used to verify the title of page.
     *
     * @param expectedTitle The expected title.
     */
    @Then("title of page is {string}")
    public void verifyTitleOfPage(String expectedTitle) {
        Assert.assertEquals(driver.getTitle(), expectedTitle);
    }

    /**
     * This method is used to test the elements displayed on page.
     *
     * @param pageName  Name of the page.
     * @param dataTable The data table containing test data.
     */
    @Then("following elements are displayed on {string}:")
    public void elementDisplayed(String pageName, DataTable dataTable) {
        List<String> data = dataTable.asList();
        for (String fieldName : data) {
            WebElement element = PageRegistry.getPageByName(pageName).elements().get(fieldName);
            testUtils.scrollUptoElementDisplay(element);
            Assert.assertTrue(element.isDisplayed());
        }
    }

    /**
     * This method is used to verify the text is display at field name.
     *
     * @param expectedText The expected text available on the label.
     * @param label        Name of the label.
     */
    @Then("{string} is displayed at {string}")
    public void verifyText(String expectedText, String label) {
        WebElement labelName = currentPage.elements().get(label);
        testUtils.waitUntilElementToBeVisible(labelName);
        testUtils.scrollUptoElementDisplay(labelName);
        Assert.assertEquals(labelName.getText(), expectedText);
    }

    /**
     * This method is used to verify the attribute of element.
     *
     * @param fieldName              Name of the field.
     * @param attributeName          Name of the attribute.
     * @param expectedAttributeValue Expected value of the attribute.
     */
    @Then("The {string} has {string} attribute set to {string}")
    public void verifyAttributeValue(String fieldName, String attributeName, String expectedAttributeValue) {
        WebElement textField = currentPage.elements().get(fieldName);
        Assert.assertEquals(textField.getAttribute(attributeName), expectedAttributeValue);
    }

    /**
     * This method waits for the specified WebElement to become invisible on the
     * current page.
     *
     * @param elementName The name or identifier of the WebElement to wait for.
     */
    @When("{string} is invisible")
    public void waitUntilElementInvisibled(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        testUtils.waitForElementToBeInvisible(element);
    }

    /**
     * This method is used to verify the element visible.
     *
     * @param elementName Name of the element.
     */
    @When("{string} is visible")
    public void waitUntilElementToBeVisibled(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        testUtils.waitUntilElementToBeVisible(element);
    }

    /**
     * This method is used to select the item from select drop down by using index.
     *
     * @param index       Index to be selected from drop down.
     * @param elementName Name of the element.
     */
    @When("item at index {int} is selected from {string}")
    public void selectByIndexFromDropdown(int index, String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        Select select = new Select(element);
        select.selectByIndex(index);
    }

    /**
     * This method is used to select the item from select drop down by using visible
     * text.
     *
     * @param text        Text to be selected from drop down.
     * @param elementName Name of the element.
     */
    @When("item {string} is selected from {string}")
    public void selectByVisibleTextFromDropdown(String text, String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        Select select = new Select(element);
        select.selectByVisibleText(text);
    }

    /**
     * This method is used to select the item from select drop down by using
     * options.
     *
     * @param text        Text to be selected from drop down.
     * @param elementName Name of the element.
     */
    @When("item {string} is selected by using options of {string}")
    public void selectByOptionsFromDropdown(String text, String elementName) {
        WebElement dropdownOptions = currentPage.elements().get(elementName);
        Select select = new Select(dropdownOptions);
        List<WebElement> elements = select.getOptions();
        for (WebElement element : elements) {
            if (element.getText().equals(text)) {
                element.click();
            }
        }
    }

    /**
     * This method is used to verify the elements are enabled.
     *
     * @param elementName Name of the element.
     */
    @Then("{string} is enabled")
    public void elementIsEnabled(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        Assert.assertTrue(element.isEnabled());
    }

    /**
     * This method is used to verify the elements are disabled.
     *
     * @param elementName Name of the element.
     */
    @Then("{string} is disabled")
    public void elementIsDisable(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        Assert.assertFalse(element.isEnabled());
    }

    /**
     * This method performs a click action on a web element using the Actions class.
     *
     * @param fieldName The name or identifier of the web element to be clicked.
     */
    @When("{string} is clicked using action class")
    public void clickByActionClass(String fieldName) {
        WebElement element = currentPage.elements().get(fieldName);
        Actions actions = new Actions(driver);
        actions.click(element).perform();
    }

    /**
     * This method enters a specified date into a text field.
     *
     * @param date      The date to be entered. Use "current" for the current date
     *                  or "future" for the next month's first date.
     * @param fieldName The name or identifier of the text field where the date
     *                  should be entered.
     */
    @Then("{string} date is entered in {string}")
    public void enterDate(String date, String fieldName) {
        WebElement textField = currentPage.elements().get(fieldName);
        textField.sendKeys(Keys.ENTER);
        Calendar calender = Calendar.getInstance();
        Date currentdate = calender.getTime();
        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy ");
        if (date.equalsIgnoreCase("current")) {
            String date1 = dateFormat.format(currentdate);
            textField.sendKeys(date1);
            textField.sendKeys(Keys.ENTER);
        } else if (date.equalsIgnoreCase("future")) {
            calender.add(Calendar.MONTH, 1);
            calender.set(Calendar.DAY_OF_MONTH, 1);
            Date nextMonthDate = calender.getTime();
            String date2 = dateFormat.format(nextMonthDate);
            textField.sendKeys(date2);
            textField.sendKeys(Keys.ENTER);
        }
    }

    /**
     * This method generates a random 4-digit number and appends it to the provided
     * name. The resulting text is then entered into the specified text field
     * element.
     *
     * @param name      The base name to be combined with the random 4-digit number.
     * @param fieldName The name or identifier of the text field element.
     * @param key       The key under which the generated text is stored in the test
     *                  data.
     */
    @When("random name {string} is entered in {string} and stored into {string}")
    public void randomNameIsEnteredAndStoredIntoKey(String name, String fieldName, String key) {
        WebElement textField = currentPage.elements().get(fieldName);
        textField.clear();
        int randomNumber = random.nextInt(9000) + 1000;
        String text = name + randomNumber;
        textField.sendKeys(text);
        testData.put(key, text);
    }

    /**
     * This method is used to verify the elements are in ascending or descending
     * order.
     *
     * @param tabelName   Name of table to be sorted.
     * @param elementName Name of the element.
     * @param order       Type of sorting.
     */
    @Then("{string} is in {string} order of {string}")
    public void elementsAreSorted(String tabelName, String order, String elementName) {
        List<WebElement> elements = currentPage.elementsGroup().get(elementName);
        List<String> columnData = elements.stream().map(element -> element.getText()).collect(Collectors.toList());
        List<String> sortedColumnData = columnData;
        if (order.equals("ASCENDING")) {
            Collections.sort(sortedColumnData);
            Assert.assertTrue(columnData.equals(sortedColumnData));
        } else if (order.equals("DESCENDING")) {
            Collections.sort(sortedColumnData);
            Collections.reverse(sortedColumnData);
            Assert.assertTrue(columnData.equals(sortedColumnData));
        }
    }

    /**
     * This method is used to verify the text is displayed at group of elements.
     *
     * @param fieldName Name of the elements.
     * @param dataTable The data table containing test data.
     */
    @Then("following text are displayed at {string}:")
    public void verifyTextPresentInList(String fieldName, DataTable dataTable) {
        List<WebElement> elements = currentPage.elementsGroup().get(fieldName);
        List<String> data = dataTable.asList();
        Set<String> expectedText = new TreeSet<>(data);
        Set<String> actualText = new TreeSet<>();
        for (WebElement element : elements) {
            actualText.add(element.getText());
        }
        Assert.assertFalse(actualText.isEmpty());
        Assert.assertFalse(expectedText.isEmpty());
        Assert.assertEquals(actualText, expectedText);
    }

    /**
     * This method locates the custom drop down element specified by 'fieldName' and
     * iterates through its options to find the option with the provided 'index'. If
     * a matching option is found, it is selected by clicking it.
     *
     * @param index     The index of the option to be selected.
     * @param fieldName The name or identifier of the drop down element.
     */
    @When("item at index {int} is selected from custom dropdown {string}")
    public void selectByIndexFromCustomDropdown(int index, String fieldName) {
        List<WebElement> element = currentPage.elementsGroup().get(fieldName);
        for (int i = 0; i < element.size(); i++) {
            if (i == index) {
                element.get(i).click();
            }
        }
    }

    /**
     * This method allows you to switch to an iframe by specifying its index
     * (0-based).
     */
    @When("focus is switched to iframe available at index {int}")
    public void switchToIframe(int index) {
        driver.switchTo().frame(index);
    }

    /**
     * This method allows you to switch back to main content.
     */
    @When("focus is switched to default content")
    public void switchToDefaultContent() {
        driver.switchTo().defaultContent();
    }

    /**
     * This method reads text from test data using the specified key and verifies
     * that it matches the text content of a WebElement identified by its label
     * name.
     *
     * @param name        A descriptive name or identifier for this step.
     * @param testDataKey The key to retrieve the text content from the test data.
     * @param labelName   The label name used to identify the WebElement whose text
     *                    will be verified.
     */
    @Then("{string} is read from the test data using the key {string} and verified with the text at element {string}")
    public void readTextFromTestDataAndVerifyText(String name, String testDataKey, String labelName) {
        String expectedText = testData.get(testDataKey);
        WebElement element = currentPage.elements().get(labelName);
        Assert.assertEquals(element.getText(), expectedText);
    }

    /**
     * This method clears the text in an input field by simulating user behavior: 1.
     * Locates the input field using its HTML element ID. 2. Selects all existing
     * text within the input field. 3. Deletes the selected text, effectively
     * clearing the input field.
     *
     * @param fieldName The name or identifier of the text field element.
     */
    @When("text of {string} is selected using CTRL+A and cleared using the DELETE key")
    public void clearTextByDeleteKey(String fieldName) {
        WebElement element = currentPage.elements().get(fieldName);
        element.sendKeys(Keys.CONTROL + "a");
        element.sendKeys(Keys.DELETE);
    }

    /**
     * This method enters the specified text into a web element using the Actions
     * class.
     *
     * @param text      The text to be entered into the web element.
     * @param fieldName The name or identifier of the web element.
     */
    @When("{string} is entered in {string} using action class")
    public void enteredTextUsingActionClass(String text, String fieldName) {
        WebElement element = currentPage.elements().get(fieldName);
        Actions actions = new Actions(driver);
        actions.sendKeys(element, text).build().perform();
    }

    /**
     * This method simulates pressing the Enter key using the Actions class.
     */
    @When("ENTER key is pressed using the action class")
    public void pressEnterUsingActionClass() {
        Actions actions = new Actions(driver);
        actions.sendKeys(Keys.ENTER).build().perform();
    }

    /**
     * This method reads text content from the test data using the provided test
     * data key and enters that text content into a web page field specified by the
     * field name.
     *
     * @param name        A descriptive name or identifier for this step.
     * @param testDataKey The key to retrieve the text content from the test data.
     * @param fieldName   The name or identifier of the web page field where the
     *                    text content will be entered.
     */
    @When("{string} is read by test data key {string} and entered in {string} using action class")
    public void readTextFromTestDataAndEnterInFieldUsingActionClass(String name, String testDataKey, String fieldName) {
        String text = testData.get(testDataKey);
        WebElement element = currentPage.elements().get(fieldName);
        Actions actions = new Actions(driver);
        actions.sendKeys(element, text).build().perform();
    }

    /**
     * This method reads text data from the test data using the specified key and
     * verifies if it contains the expected text.
     *
     * @param name         A descriptive name or identifier for the test case or
     *                     scenario.
     * @param testDataKey  The key to access the text data from the test data
     *                     source.
     * @param expectedText The text string that is expected to be contained within
     *                     the retrieved text data.
     */
    @Then("{string} is read from the test data using the key {string} and compared to the expected text {string}")
    public void readTextFromTestDataAndVerifyGivenText(String name, String testDataKey, String expectedText) {
        String actualText = testData.get(testDataKey);
        Assert.assertTrue(actualText.contains(expectedText));
    }

    /**
     * This method enters a date into a text field with a specific format,
     * calculated as a specified number of months from the current date with a
     * specified day of the month.
     *
     * @param numberOfMonths The number of months to add to the current date.
     * @param day            The day of the month for the calculated date.
     * @param fieldName      The name or identifier of the text field where the date
     *                       will be entered.
     * @param dateFormat     The desired format for the date (e.g., "MM/dd/yyyy").
     */
    @When("the date, {int} months from now on day {int} is entered in the {string} field with the format {string}")
    public void enterDateInSpecificFormat(int numberOfMonths, int day, String fieldName, String dateFormat) {
        WebElement textField = currentPage.elements().get(fieldName);
        textField.sendKeys(Keys.ENTER);
        DateFormat simpleDateFormat = new SimpleDateFormat(dateFormat);
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, numberOfMonths);
        calendar.set(Calendar.DAY_OF_MONTH, day);
        Date nextDayDate = calendar.getTime();
        String formattedDate = simpleDateFormat.format(nextDayDate);
        textField.sendKeys(formattedDate, Keys.ENTER);
    }

    /**
     * This method verifies that the given expectedText is present in the current
     * URL.
     *
     * @param expectedText The text to be checked for in the current URL.
     */
    @Then("{string} is present in the current URL")
    public void textIsPresentInThURL(String expectedText) {
        String currentURL = driver.getCurrentUrl();
        Assert.assertTrue(currentURL.contains(expectedText));
    }

    /**
     * This method generates a random name consisting of characters from a
     * predefined set, enters it into a specified web element, and stores it in the
     * test data under a specified key.
     *
     * @param name        A placeholder for the generated random name (to be
     *                    modified within the method).
     * @param fieldName   The identifier for the web element where the random name
     *                    should be entered.
     * @param testDataKey The key under which the generated random name will be
     *                    stored in the test data.
     */
    @When("random name {string} is generated and entered into {string}, and it is stored into test data key {string}")
    public void generateUniqueName(String name, String fieldName, String testDataKey) {
        WebElement textField = currentPage.elements().get(fieldName);
        String allowedCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,-'";
        Random randm = new Random();

        // Generate a random letter and append it to the name
        for (int i = 0; i < 10; i++) {
            int randomIndex = randm.nextInt(allowedCharacters.length());
            char randomLetter = allowedCharacters.charAt(randomIndex);
            name = name + randomLetter;
        }

        textField.sendKeys(name);
        testData.put(testDataKey, name);

    }

    /**
     * This method reads a text value from the test data using a specific data key
     * and verifies that it is contained within the text of a web element at a
     * specified location.
     *
     * @param name        A human-readable name or description for the test step.
     * @param testDataKey The key to look up the expected text value in the test
     *                    data.
     * @param fieldName   The identifier for the web element whose text you want to
     *                    check.
     */
    @Then("{string} stored in the test data key {string} is contained in the text of {string}")
    public void readTextFromTestDataAndVerifyGivenTextAtSpecificElement(String name, String testDataKey,
                                                                        String fieldName) {
        WebElement textField = currentPage.elements().get(fieldName);
        String displayedText = textField.getText();
        String actualText = testData.get(testDataKey);
        Assert.assertTrue(displayedText.contains(actualText));
    }

    @When("{string} group is created manually by iaic admin")
    public String NormalGroupCreation(String groupType) throws Exception {
        String url = driver.getCurrentUrl();
        System.out.println(url);
        if(url.equals("https://portal-qa2.independenceamerican.com/login/?redirect=/secondary-auth/")){
            GroupCreatorQA2 groupCreatorQA2 = new GroupCreatorQA2(driver);
            getGroupNumber = groupCreatorQA2.normalGroupCreation(groupType);
        }else{
            GroupCreatorQA1 groupCreatorQA1 = new GroupCreatorQA1(driver);
            getGroupNumber = groupCreatorQA1.normalGroupCreation(groupType);
        }
        return getGroupNumber;
    }

    @When("Verify employee added & {string}")
    public void normalAddEmployee(String enrollment) throws Exception {
        String url = driver.getCurrentUrl();
        System.out.println(url);
        if(url.startsWith("https://portal-qa2.independenceamerican.com/")){
            AddEmployeeCanada AddEmployeeCanada = new AddEmployeeCanada(driver);
            AddEmployeeCanada.normalAddEmployee(enrollment);
        }else{
            AddEmployeeUS AddEmployeeUS = new AddEmployeeUS(driver);
            AddEmployeeUS.normalAddEmployee(enrollment);
        }
    }

    @When("{string} is search for group")
    public void isSearchForGroup(String elementName) {
        WebElement element = currentPage.elements().get(elementName);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(element));
        testUtils.scrollUptoElementDisplay(element);
        String url = driver.getCurrentUrl();
        System.out.println(url);
        if(url.startsWith("https://portal-qa2.independenceamerican.com/")) {
            element.sendKeys(newGroupName2);
        }else{
            element.sendKeys(newGroupName1);
        }
    }

    @When("Upload Post Enrollment File {string}")
    public void uploadPostEnrollmentFile(String file) throws Exception {
        String path = "";
        switch (file) {
            case "Employee Level Post Enrollment":
                path = "src//test//testData//Employee Level Post Enrollment.csv";
                break;
            case "Pet Level Post Enrollment":
                path = "src//test//testData//Pet Level Post Enrollment.csv";
                break;
            case "Employee Level Termination":
                path = "src//test//testData//Employee Level Termination.csv";
                break;
            case "Pet Level Removal":
                path = "src//test//testData//Pet Level Removal.csv";
                break;
            case "PostEnrollmentFile_Validation":
                path = "src//test//testData//PostEnrollmentFile_Validation.csv";
                break;
        }

        path = path.replace("\\", File.separator);
        String filepath = System.getProperty("user.dir") + File.separator + path;
        modifyFile(path, file, List.of("GroupNbr"), () -> getGroupNumber);
        WebElement element = driver.findElement(By.xpath("//input[@class='filepond--browser']"));
        WebElement done = driver.findElement(By.xpath("//button[@aria-label='Done']"));
        testUtils.scrollUptoElementDisplay(element);
        element.sendKeys(filepath);
        Thread.sleep(10000);
        done.click();
    }

    @Then("Verify coverage end date {string} for {string}")
    public void verifyCoverageEndDateFor(String arg0, String arg1) {
    }

    @And("Verify paid amount shows {string} and bill status changes to {string}")
    public void verifyPaidAmountShowsAndBillStatusChangesTo(String billedAmount, String billingStatus) throws InterruptedException {
        Thread.sleep(60000);
        WebElement refresh = driver.findElement(By.xpath("//button[@aria-label='Refresh Data']"));
        refresh.click();
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        WebElement amount = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("(//div[@color='primaryDark'])[5]")));
        WebElement status = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("(//div[@color='primaryDark'])[3]")));
        Assert.assertEquals(amount.getText().trim(), billedAmount);
        Assert.assertEquals(status.getText().trim(), billingStatus);
    }


    @And("Verify {string} is clicked")
    public void verifyIsClicked(String filter) {
        WebElement element = currentPage.elements().get(filter);
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        WebElement searchGroupName = driver.findElement(By.xpath("//input[@id='groupName']"));
        wait.until(ExpectedConditions.elementToBeClickable(element));
        testUtils.scrollUptoElementDisplay(element);
        if (!searchGroupName.isDisplayed()){
           try {
            element.click();
            } catch (ElementClickInterceptedException e) {
            // Fallback: click via JS
                ((JavascriptExecutor) driver).executeScript("arguments[0].click();", element);
            }
        }
    }

    @And("Select New Payroll Date for {int} month")
    public void selectNewPayrollDateForMonth(int month) throws InterruptedException {
        if(envType.equals(EnvironmentType.QA2)){
            AddEmployeeCanada AddEmployeeCanada = new AddEmployeeCanada(driver);
            AddEmployeeCanada.selectNewPayrollDate(month);
        }else{
            AddEmployeeUS AddEmployeeUS = new AddEmployeeUS(driver);
            AddEmployeeUS.selectNewPayrollDate(month);
        }
    }

    @And("Verify {string} group is renewed")
    public void verifyGroupIsRenewed(String groupType) throws Exception {
        String url = driver.getCurrentUrl();
        System.out.println(url);
        if(url.startsWith("https://portal-qa2.independenceamerican.com/")) {
            GroupCreatorQA2 group= new GroupCreatorQA2(driver);
            group.groupsRenewal(newGroupName2,groupType);
        }else{
            GroupCreatorQA1 group= new GroupCreatorQA1(driver);
            group.groupsRenewal(newGroupName1,groupType);
        }
    }

    @And("Verify OTP is extracted for email")
    public void verifyOTPIsExtractedForEmail() throws Exception {
        // Initialize the EmailReader class to extract OTP
        EmailReader emailReader = new EmailReader();
        String otp = emailReader.getOTP();
        if (!otp.isEmpty()) {
            System.out.println(otp);
        } else {
            System.out.println("No OTP found.");
            throw new Exception("OTP not found in the latest email.");
        }
        WebElement element1 = driver.findElement(By.xpath("//input[@id='passcode']"));
        WebElement element2 = driver.findElement(By.xpath("//div[text()='Verify Email']"));
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(element1));
        testUtils.scrollUptoElementDisplay(element1);
        element1.sendKeys(otp);
        wait.until(ExpectedConditions.elementToBeClickable(element2));
        testUtils.scrollUptoElementDisplay(element2);
        element2.click();
    }

    @When("User opens on the SSO Login URL for Workday")
    public void user_click_on_sso_login_url_for_working() {
        driver.get(properties.getProperty("sso-url"));
    }

    @When("user should be logged in using SSO authentication")
    public void user_should_be_logged_in_using_sso_authentication() {
        WebElement element1 = driver.findElement(By.xpath("//input[@autocomplete='username']"));
        WebElement element2 = driver.findElement(By.xpath("//input[@autocomplete='current-password']"));
        WebElement element3 = driver.findElement(By.xpath("//input[@type='submit']"));
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        wait.until(ExpectedConditions.elementToBeClickable(element1));
        testUtils.scrollUptoElementDisplay(element1);
        element1.sendKeys(properties.getProperty("SSO_USERNAME"));
        //element3.click();
        wait.until(ExpectedConditions.elementToBeClickable(element2));
        testUtils.scrollUptoElementDisplay(element2);
        element2.sendKeys((properties.getProperty("SSO_PASSWORD")));
        element3.click();
    }
}
