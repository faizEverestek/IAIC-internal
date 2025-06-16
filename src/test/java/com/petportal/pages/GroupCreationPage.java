package com.petportal.pages;
import com.petportal.base.web.AbstractPage;
import com.petportal.base.web.WebPage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@WebPage
public class GroupCreationPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//label[@for='groupType']/following-sibling::div[1]") private WebElement groupType;
    @FindBy(xpath = "//*[text()='IAIC Administered']") private WebElement selectGroupType;
    @FindBy(xpath = "//*[text()='Ben Admin Administered']") private WebElement selectGroupTypeBA;
    @FindBy(xpath = "//label[@for='benAdminId']/following-sibling::div[1]") private WebElement groupBenAdmin;
    @FindBy(xpath = "(//input[@aria-autocomplete='list'])[2]") private WebElement listGroupBenAdmin;
    @FindBy(xpath = "//*[text()='Automation PDBA (Post Enrollment Included)']") private WebElement selectBenAdmin;
    @FindBy(xpath = "//label[@for='mga']/following-sibling::div[1]") private WebElement groupMGA;
    @FindBy(xpath = "//*[text()='PetPartners']") private WebElement selectGroupMGAPet;
    @FindBy(xpath = "//*[text()='FIGO']") private WebElement selectGroupMGAFigo;
    @FindBy(xpath = "//input[@aria-label='Federal Number']") private WebElement federalNumber;
    @FindBy(xpath = "//label[@for='companyCode']/following-sibling::div[1]") private WebElement companyCode;
    @FindBy(xpath = "//label[@for='payrollDeductionReportLevel']/following-sibling::div[1]") private WebElement payrollDeductionReportLevel;
    @FindBy(xpath = "//*[text()='US']") private WebElement selectCompanyCode;
    @FindBy(xpath="//*[text()='Pet']") private WebElement selectpayrollDeductionReportLevel;
    @FindBy(xpath="//input[@id='agencyCode']") private WebElement agencyCode;
    @FindBy(xpath="(//a[@aria-label='View'])[1]") private WebElement viewGroup;
    @FindBy(xpath = "//input[@id='sicCode']") private WebElement sicCode;
    @FindBy(xpath = "//input[@id='groupNumber']") private WebElement mgaGroupNumber;
    @FindBy(xpath = "//input[@id='groupName']") private WebElement companyName;
    @FindBy(xpath = "//input[@aria-label='Location Name']") private WebElement locationName;
    @FindBy(xpath = "//input[@aria-label='Address Line 1']") private WebElement addressLine1;
    @FindBy(xpath = "//input[@aria-label='City']") private WebElement city;
    @FindBy(xpath = "//label[@for='locations[0].address.state']/following-sibling::div[1]") private WebElement state;
    @FindBy(xpath = "//*[text()='Alaska']") private WebElement selectState;
    @FindBy(xpath = "//input[@id='locations[0].address.zipcode']") private WebElement zipcode;
    @FindBy(xpath = "//input[@id='zipCode']") private WebElement zipcode2;
    @FindBy(xpath = "//label[@for='locations[0].contact.contactType']/following-sibling::div[1]") private WebElement contactType;
    @FindBy(xpath = "//*[text()='Home']") private WebElement selectContactType;
    @FindBy(xpath = "//input[@aria-label='Contact Number']") private WebElement contactNumber;
    @FindBy(xpath = "//label[@for='newHireWaitingPeriod']/following-sibling::div[1]") private WebElement newHireWaitingPeriod;
    @FindBy(xpath = "//*[text()='N/A']") private WebElement selectnewWaitingPeriod;
    @FindBy(xpath = "//input[@id='isFirstFollowingWaitingPeriod']") private WebElement firstOfMonthWaitingPeriod;
    @FindBy(xpath = "//input[@id='enrollmentPeriod']") private WebElement enrollmentPeriod;
    @FindBy(xpath = "//label[@for='adminContactType']/following-sibling::div") private WebElement contactType1;
    @FindBy(xpath = "//*[text()='Add New Admin']") private WebElement selectContactType1;
    @FindBy(xpath = "//input[@id='firstName']") private WebElement firstName;
    @FindBy(xpath = "//input[@id='user.firstName']") private WebElement userFirstName;
    @FindBy(xpath = "//input[@id='lastName']") private WebElement lastName;
    @FindBy(xpath = "//input[@id='email']") private WebElement email;
    @FindBy(xpath = "//label[@for='contactType']/following-sibling::div[1]") private WebElement phoneType;
    @FindBy(xpath = "//input[@id='phoneNumber']") private WebElement phoneNumber;
    @FindBy(xpath = "//*[text()='Home']") private WebElement selectPhoneType;
    @FindBy(xpath = "//div[text()='Create Admin']") private WebElement createAdmin;
    @FindBy(xpath = "//h3[text()='Administrators Info:']") private WebElement adminResult;
    @FindBy(xpath = "//div[text()='Next']") private WebElement nextButton;
    @FindBy(xpath = "//*[@class='Snackbar_snackbar__text__1Hx2a']") private WebElement snackBar;
    @FindBy(xpath = "//input[@id='billingInfo.addressLine1']") private WebElement billingAddress1;
    @FindBy(xpath = "//input[@id='billingInfo.city']") private WebElement billingCity;
    @FindBy(xpath = "//label[@for='billingInfo.state']/following-sibling::div[1]") private WebElement billingState;
    @FindBy(xpath = "//input[@id='billingInfo.zipcode']") private WebElement billingZipCode;
    @FindBy(xpath = "//input[@id='accountName']") private WebElement accountName;
    @FindBy(xpath = "//label[@for='accountType']/following-sibling::div[1]") private WebElement paymentMethod;
    @FindBy(xpath = "//*[text()='ACH Manual']") private WebElement selectPaymentMethod;
    @FindBy(xpath = "//label[@for='billingType']/following-sibling::div[1]") private WebElement billingType;
    @FindBy(xpath = "//*[text()='Pay In Advance']") private WebElement selectPayInAdvance;
    @FindBy(xpath = "//*[text()='Pay In Arrears']") private WebElement selectPayInArrears;
    @FindBy(xpath = "//*[text()='Pay In Advance']") private WebElement selectBillingType;
    @FindBy(xpath = "//label[@for='billingCycle']/following-sibling::div[1]") private WebElement billingCycle;
    @FindBy(xpath = "//*[text()='12']") private WebElement selectBillingCycle;
    @FindBy(xpath = "//label[@for='payrollFrequency']/following-sibling::div[1]") private WebElement payrollFrequency;
    @FindBy(xpath = "(//*[text()='12'])[2]") private WebElement selectPayrollFrequency;
    @FindBy(xpath = "//input[@aria-label='Date']") private WebElement waitForDate;
    @FindBy(xpath = "//input[@aria-label='Date']") private WebElement firstPayrollStartDate;
    @FindBy(xpath = "//input[@id='billDaysPriorToPayroll']") private WebElement billDaysPriorToPayroll;
    @FindBy(xpath = "//div[text()='Generate Payroll Cycle']") private WebElement generatePayrollBtn;
    @FindBy(xpath = "//div[text()='Hide Payroll Cycle']") private WebElement hidePayrollBtn;
    @FindBy(xpath = "//button[@type='submit']") private WebElement submitButton;
    @FindBy(xpath = "//th[text()='Payroll Cycle']") private WebElement payrollCycleText;
    @FindBy(xpath = "//h2[text()='Groups Dashboard']") private WebElement groupDashboard;
    @FindBy(xpath = "//button[contains(@class,'DropdownMenu')]") private WebElement groupsDropdown;
    @FindBy(xpath = "//*[text()='All Groups']") private WebElement selectAllGroups;
    @FindBy(xpath = "//input[@aria-label='Month']") private WebElement dateInput_Month;
    @FindBy(xpath = "//input[@aria-label='Day']") private WebElement dateInput_Day;
    @FindBy(xpath = "//input[@aria-label='Year']") private WebElement dateInput_year;
    @FindBy(xpath = "//button[@aria-label='Toggle calendar']") private WebElement calendarBtn;
    @FindBy(xpath = "(//button[contains(@class,'tile--now')]/following-sibling::button[1])[2]") private WebElement firstCoverageStartDate;
    @FindBy(xpath = "//button[contains(@class,'next-button')]") private WebElement calendarMonthChange;
    @FindBy(xpath = "//button[@class='react-calendar__navigation__label']") private WebElement calendarYearChange;
    @FindBy(xpath = "//button[text()='2023']") private WebElement selectNewYear2023;
    @FindBy(xpath = "//button[text()='2024']") private WebElement selectCurrentYear;
    @FindBy(xpath = "//button[text()='2025']") private WebElement selectNewYear2025;
    @FindBy(xpath = "(//abbr[text()='June'])[1]") private WebElement selectJanuary;
    @FindBy(xpath = "(//abbr[text()='July'])[1]") private WebElement selectFeb;
    @FindBy(xpath = "(//*[text()='11'])[1]") private WebElement select11January;
    @FindBy(xpath = "(//*[text()='10'])[1]") private WebElement select9Feb;
    @FindBy(xpath = "(//abbr[@aria-label='June 2025'])[1]") private WebElement selectJanuary2025;
    @FindBy(xpath = "(//button[@class='react-calendar__navigation__label'])[2]") private WebElement calendarYearChange2;
    @FindBy(xpath = "//button[contains(@class,'tile--now')]/following-sibling::button[1]") private WebElement tomorrowDatePicker;
    @FindBy(xpath = "//div[@aria-label='Group Name']/div[@color='primaryDark']") private WebElement groupName;
    @FindBy(xpath = "//div[@aria-label='Federal Number']/div[@color='primaryDark']") private WebElement federalNumber1;

    public GroupCreationPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Group Creation Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }

}
