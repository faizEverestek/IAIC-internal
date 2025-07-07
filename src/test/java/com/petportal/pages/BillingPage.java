package com.petportal.pages;

import com.petportal.base.web.AbstractPage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.FindBy;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.petportal.base.web.WebPage;

@WebPage
public class BillingPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Billing']") private WebElement billingLink;
    @FindBy(xpath = "//button[@aria-label='View / Hide Filters']") private WebElement filterButton;
    @FindBy(xpath = "//a[@aria-label='Billing']") private WebElement billingHeader;
    @FindBy(xpath = "//input[@id='groupName']") private WebElement searchGroupName;
    @FindBy(xpath = "//tr[2]/td[7]/div") private WebElement actualPayrollDate;
    @FindBy(xpath = "//div[text()='Billing Calendar']") private WebElement billingCalendarTab;
    @FindBy(xpath = "(//div[@aria-label='Group Name']//div[2])[1]/div/div") private WebElement groupNameTxt;
    @FindBy(xpath = "//a[@aria-label='View']") private WebElement viewGroup;
    @FindBy(xpath = "//div[text()='Billing Status']/following-sibling::div") private WebElement billingStatus;
    @FindBy(xpath = "//a[@aria-label='Accounts Dashboard']") private WebElement accountDashboard;
    @FindBy(xpath = "//div[@data-tip='Confirm']") private WebElement actionConfirm;
    @FindBy(xpath = "//input[@id='confirmAmount']") private WebElement confirmAmount;
    @FindBy(xpath = "(//button[@aria-label='Toggle calendar'])[2]") private WebElement calendarBtn2;
    @FindBy(xpath = "//button[contains(@class,'tile--now')]") private WebElement todayDate;
    @FindBy(xpath = "//div[text()='Add']") private WebElement addBtn;
    @FindBy(xpath = "//input[@id='controlAmount']") private WebElement controlAmount;
    @FindBy(xpath = "//div[text()='Submit Confirmations']") private WebElement submissionConfirmBtn;
    @FindBy(xpath = "//button[@title='Actions']") private WebElement threeDotsActionLink;
    @FindBy(xpath = "//*[text()='Master Calendar']") private WebElement masterCalendar;
    @FindBy(xpath = "//a[text()='Pet Cash Premium Report']") private WebElement cashPremiumLink;
    @FindBy(xpath = "//button[@aria-label='Toggle calendar']") private WebElement calendarBtn;
    @FindBy(xpath = "//input[@aria-label='Date']") private WebElement selectDate;
    @FindBy(xpath = "//button[contains(@class,'next-button')]") private WebElement calendarMonthChange;
    @FindBy(xpath = "//button[contains(@class,'label')]/span") private WebElement monthYear;
    @FindBy(xpath = "//abbr[text()='1']") private WebElement selectFirstOfNextMonth;
    @FindBy(xpath = "//abbr[text()='15']") private WebElement selectMidDateOfMonth;
    @FindBy(xpath = "//div[text()='Download']") private WebElement downloadBtn;
    @FindBy(xpath = "//a[@aria-label='Aging Report']") private WebElement ageingReportLink;
    @FindBy(xpath = "//a[text()='Commission Report']") private WebElement commissionReportLink;
    @FindBy(xpath = "//label[@for='groupMGA']/following-sibling::div[1]") private WebElement mga;
    @FindBy(xpath = "//*[text()='PPI']") private WebElement selectGroupMGA;
    @FindBy(xpath = "//input[@aria-label='Month']") private WebElement monthDate;
    @FindBy(xpath = "//input[@aria-label='Year']") private WebElement yearDate;
    @FindBy(xpath = "(//*[text()='Group Number'])[1]") private WebElement mgaGroupNumber;
    @FindBy(xpath = "//input[@id='groupNumber']") private WebElement GroupNumber;
    @FindBy(xpath = "(//*[text()='Group Name'])[1]") private WebElement groupName;
    @FindBy(xpath = "(//*[text()='Actual Bill Creation Date'])[1]") private WebElement billCreationDate;
    @FindBy(xpath = "(//*[text()='Enrolled Employees'])[1]") private WebElement noOfEmployees;
    @FindBy(xpath = "(//*[text()='Amount Owed'])[1]") private WebElement amountOwned;
    @FindBy(xpath = "//*[text()='Default View']") private WebElement defaultView;
    @FindBy(xpath = "//*[text()='Past View']") private WebElement pastView;
    @FindBy(xpath = "//div[@class='sc-bczRLJ bxjIdW']") private WebElement slaMarker;
    @FindBy(xpath = "//*[text()='Master Billing Calendar Report']") private WebElement exportMasterCalendarReport;
    @FindBy(xpath = "//*[text()='Master Billing Calendar Report Exported Successfully']") private WebElement exportMasterCalendarTxt;
    @FindBy(xpath = "//button[@aria-label='Export Status']") private WebElement exportEnrollmentReport;
    @FindBy(xpath = "//div[text()='Submit']") private WebElement submitBtn1;
    @FindBy(xpath = "//input[@aria-label='Report Type']") private WebElement reportType;
    @FindBy(xpath = "(//*[text()='Enrollment Report'])[1]") private WebElement selectReportType;
    @FindBy(xpath = "(//*[text()='Employee Report Exported Successfully'])[1]") private WebElement reportExported;
    @FindBy(xpath = "//a[@aria-label='Remit']") private WebElement remitBtn;
    @FindBy(xpath = "//input[@aria-label='Payment Type']") private WebElement paymentType;
    @FindBy(xpath = "//*[text()='ACH Manual' or text()='EFT']") private WebElement selectPaymentMethod;
    @FindBy(xpath = "//input[@aria-label='Remittance Method Type']") private WebElement remittanceMethodType;
    @FindBy(xpath = "//*[text()='Auto Remittance']") private WebElement autoRemittance;
    @FindBy(xpath = "//*[text()='Upload File']") private WebElement uploadRemittanceFile;
    @FindBy(xpath = "//div[@class='Snackbar_snackbar__text__1Hx2a']") private WebElement errorMessage;
    @FindBy(xpath = "//button[@type='submit']") private WebElement done;
    @FindBy(xpath = "//button[@aria-label='Confirm']") private WebElement confirm;
    @FindBy(xpath = "//a[@aria-label='Accounts Dashboard']") private WebElement accountsDashboard;
    @FindBy(xpath = "(//input[@aria-label='Year'])[3]") private WebElement yearInput;
    @FindBy(xpath = "(//input[@aria-label='Month'])[3]") private WebElement monthInput;
    @FindBy(xpath = "(//input[@aria-label='Day'])[3]") private WebElement dayInput;
    @FindBy(xpath = "//div[text()='Add']") private WebElement add;
    @FindBy(xpath = "//a[@aria-label='Groups']") private WebElement groupLink;
    @FindBy(xpath = "(//a[@aria-label='View'])[1]") private WebElement view;
    @FindBy(xpath = "(//a[@aria-label='Edit'])[1]") private WebElement edit;
    @FindBy(xpath = "(//div[text()='Billing Reports'])[1]") private WebElement billingReports;
    @FindBy(xpath = "(//button[@aria-label='Download'])[1]") private WebElement download;
    @FindBy(xpath = "//input[@class='filepond--browser']") private WebElement filepondbrowser;
    @FindBy(xpath = "(//button[@title='Actions'])[1]") private WebElement actionsButton;
    @FindBy(xpath = "//div[text()='Change Employee Plan']") private WebElement changeEmployeePlan;
    @FindBy(xpath = "//button[@aria-label='Refresh Data']") private WebElement refreshData;
    @FindBy(xpath = "//a[@aria-label='View Template Files']") private WebElement viewTemplateFiles;
    @FindBy(xpath = "//*[text()='Ben Admin Administered']") private WebElement benAdminButton;
    @FindBy(xpath = "//label[@for='groupType']/following-sibling::div[1]") private WebElement benAdminDropdown;
    @FindBy(xpath = "//div[@data-cy='benAdminId']//input[@role='combobox']") private WebElement searchInput;
    @FindBy(xpath = "//*[text()='Automation PDBA (Post Enrollment Included)']") private WebElement automationOption;
    @FindBy(xpath = "//div[text()='Next']") private WebElement next;
    @FindBy(xpath = "//div[text()='Submit']") private WebElement submit;
    @FindBy(xpath = "//input[@autocomplete='username']") private WebElement ssoUsername;
    @FindBy(xpath = "//input[@autocomplete='current-password']") private WebElement ssoPassword;
    @FindBy(xpath = "//input[@type='submit']") private WebElement ssoSignIn;

    @FindBy(xpath = "//input[@id='firstName']") private WebElement ssoFirstName;
    @FindBy(xpath = "//input[@id='lastName']") private WebElement ssoLastName;
    @FindBy(xpath = "//input[@id='email']") private WebElement ssoEmail;
    @FindBy(xpath = "//input[@id='address.addressLine1']") private WebElement ssoAddressLine1;
    @FindBy(xpath = "//input[@id='address.addressLine2']") private WebElement ssoAddressLine2;
    @FindBy(xpath = "//input[@id='address.city']") private WebElement ssoCity;
    @FindBy(xpath = "//input[@aria-label='state']") private WebElement ssoState;
    @FindBy(xpath = "//input[@id='address.zipcode']") private WebElement ssoZipcode;
    @FindBy(xpath = "//input[@id='acceptance']") private WebElement ssoAcceptance;
    @FindBy(xpath = "(//button[@type='button'])[1]") private WebElement sendVerificationCode;
    @FindBy(xpath = "//div[text()='OK']") private WebElement ok;
    @FindBy(xpath = "//div[text()='New York']") private WebElement newYork;
    @FindBy(xpath = "//div[normalize-space(text())='Credit Available']/following::div[contains(@class,'Truncate__EllipsisBox')][1]") private WebElement creditAvailable ;
    @FindBy(xpath = "//button[@aria-label='Show more details']") private WebElement showMoreDetails;
    @FindBy(xpath = "//table//tbody/tr[1]/td[6]") private WebElement pendingRetroCredit;
    @FindBy(xpath = "//div[@aria-label='Credit Available']//div[contains(text(), 'Credit Available')]") private WebElement creditAvailableLabel;
    @FindBy(xpath = "//div[@aria-label='Credit Available']//div[@data-for='dg-tooltip']") private WebElement creditAvailableValue;
    @FindBy(xpath = "//div[@aria-label='Group Type']//div[contains(text(), 'Ben') or contains(text(), 'IAIC')]") private WebElement groupTypeValue;

    public BillingPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
        WEB_ELEMENT_MAPPING.put("Billing Link", billingLink);
        WEB_ELEMENT_MAPPING.put("Filter Button", filterButton);
        WEB_ELEMENT_MAPPING.put("Billing Dashboard", billingHeader);
        WEB_ELEMENT_MAPPING.put("Search Group Name", searchGroupName);
        WEB_ELEMENT_MAPPING.put("Billing Calendar", billingCalendarTab);
        WEB_ELEMENT_MAPPING.put("Actual Payroll Date", actualPayrollDate);
        WEB_ELEMENT_MAPPING.put("Remit Button", remitBtn);
        WEB_ELEMENT_MAPPING.put("Payment Type Input", paymentType);
        WEB_ELEMENT_MAPPING.put("Select Payment Method", selectPaymentMethod);
        WEB_ELEMENT_MAPPING.put("Remittance Method Type Input", remittanceMethodType);
        WEB_ELEMENT_MAPPING.put("Auto Remittance Option", autoRemittance);
        WEB_ELEMENT_MAPPING.put("Upload Remittance File Option", uploadRemittanceFile);
        WEB_ELEMENT_MAPPING.put("Error Message", errorMessage);
        WEB_ELEMENT_MAPPING.put("Done Button", done);
        WEB_ELEMENT_MAPPING.put("Confirm", confirm);
        WEB_ELEMENT_MAPPING.put("Accounts Dashboard", accountsDashboard);
        WEB_ELEMENT_MAPPING.put("Confirm Amount Input", confirmAmount);
        WEB_ELEMENT_MAPPING.put("Day Input", dayInput);
        WEB_ELEMENT_MAPPING.put("Year Input", yearInput);
        WEB_ELEMENT_MAPPING.put("Month Input", monthInput);
        WEB_ELEMENT_MAPPING.put("Add Button", add);
        WEB_ELEMENT_MAPPING.put("Control Amount", controlAmount);
        WEB_ELEMENT_MAPPING.put("Submit Confirmations", submissionConfirmBtn);
        WEB_ELEMENT_MAPPING.put("Group Link", groupLink);
        WEB_ELEMENT_MAPPING.put("View", view);
        WEB_ELEMENT_MAPPING.put("Edit", edit);
        WEB_ELEMENT_MAPPING.put("Billing Reports", billingReports);
        WEB_ELEMENT_MAPPING.put("Download", download);
        WEB_ELEMENT_MAPPING.put("File Upload", filepondbrowser);
        WEB_ELEMENT_MAPPING.put("Actions Button", actionsButton);
        WEB_ELEMENT_MAPPING.put("Change Employee Plan", changeEmployeePlan);
        WEB_ELEMENT_MAPPING.put("Refresh Data", refreshData);
        WEB_ELEMENT_MAPPING.put("View Template Files", viewTemplateFiles);
        WEB_ELEMENT_MAPPING.put("Export Enrollment Report", exportEnrollmentReport);
        WEB_ELEMENT_MAPPING.put("Report Type", reportType);
        WEB_ELEMENT_MAPPING.put("Select Report Type", selectReportType);
        WEB_ELEMENT_MAPPING.put("submit Button", submitBtn1);
        WEB_ELEMENT_MAPPING.put("Report Exported", reportExported);
        WEB_ELEMENT_MAPPING.put("Ben Admin Administered", benAdminButton);
        WEB_ELEMENT_MAPPING.put("Ben Admin Dropdown", benAdminDropdown);
        WEB_ELEMENT_MAPPING.put("Search Input", searchInput);
        WEB_ELEMENT_MAPPING.put("Automation PDBA Option", automationOption);
        WEB_ELEMENT_MAPPING.put("Next", next);
        WEB_ELEMENT_MAPPING.put("Submit", submit);
        WEB_ELEMENT_MAPPING.put("SSO Username", ssoUsername);
        WEB_ELEMENT_MAPPING.put("SSO Password", ssoPassword);
        WEB_ELEMENT_MAPPING.put("SSO Sign In", ssoSignIn);

        WEB_ELEMENT_MAPPING.put("SSO First Name", ssoFirstName);
        WEB_ELEMENT_MAPPING.put("SSO Last Name", ssoLastName);
        WEB_ELEMENT_MAPPING.put("SSO Email", ssoEmail);
        WEB_ELEMENT_MAPPING.put("SSO Address Line 1", ssoAddressLine1);
        WEB_ELEMENT_MAPPING.put("SSO Address Line 2", ssoAddressLine2);
        WEB_ELEMENT_MAPPING.put("SSO City", ssoCity);
        WEB_ELEMENT_MAPPING.put("SSO State", ssoState);
        WEB_ELEMENT_MAPPING.put("SSO Zipcode", ssoZipcode);
        WEB_ELEMENT_MAPPING.put("SSO Acceptance", ssoAcceptance);
        WEB_ELEMENT_MAPPING.put("Send Verification Code", sendVerificationCode);
        WEB_ELEMENT_MAPPING.put("OK", ok);
        WEB_ELEMENT_MAPPING.put("New York", newYork);
        WEB_ELEMENT_MAPPING.put("Credit Available", creditAvailable);
        WEB_ELEMENT_MAPPING.put("Show more details", showMoreDetails);
        WEB_ELEMENT_MAPPING.put("Pending Retro Credit", pendingRetroCredit);
        WEB_ELEMENT_MAPPING.put("CREDIT AVAILABLE LABEL", creditAvailableLabel);
        WEB_ELEMENT_MAPPING.put("CREDIT AVAILABLE VALUE", creditAvailableValue);
        WEB_ELEMENT_MAPPING.put("GROUP TYPE VALUE", groupTypeValue);
        
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Billing Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
