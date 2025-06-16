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
public class RenewalPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//div[text()='Create Renewal']")
    private WebElement createRenewalLink;

    @FindBy(xpath = "//label[@for='censusType']/following-sibling::div[1]")
    private WebElement renewalType;

    @FindBy(xpath = "(//button[contains(@class,'next2-button')])[1]")
    private WebElement renewalEnrollFromYear;

    @FindBy(xpath = "(//button[contains(@class,'next2-button')])")
    private WebElement renewalEnrollToYear;

    @FindBy(xpath = "(//button[@aria-label='Toggle calendar'])[3]")
    private WebElement RenewalcalendarBtnFrom;

    @FindBy(xpath = "(//button[@aria-label='Toggle calendar'])[4]")
    private WebElement RenewalcalendarBtnTo;

    @FindBy(xpath = "(//abbr[text()='1'])[3]")
    private WebElement renewalEnrollFromFirstDate;

    @FindBy(xpath = "//abbr[text()='1']")
    private WebElement renewalEnrollFirstDate;

    @FindBy(xpath = "//div[text()='Renewal Status']/following-sibling::div")
    private WebElement renewalStatus;

    @FindBy(xpath = "//div[text()='Silver Plan Details']")
    private WebElement silverPlanDetails;

    @FindBy(xpath = "//div[text()='Master Policy End Date']/following-sibling::div")
    private WebElement masterPolicyDate;

    @FindBy(xpath = "//div[contains(@data-tip,'left for renewal')]")
    private WebElement groupColor;

    @FindBy(xpath = "//a[text()='Group Settings']")
    private WebElement groupSettingLink;

    @FindBy(xpath = "//a[text()='Add Credit']")
    private WebElement addCredit;

    @FindBy(xpath = "//*[text()='Refund Group Credit']")
    private WebElement refundCredit;

    @FindBy(xpath = "//h3[text()='Notifications']")
    private WebElement notificationLink;

    @FindBy(xpath = "//input[@aria-label='Do not send email']")
    private WebElement doNotSendEmail;

    @FindBy(xpath = "//div[text()='Save']")
    private WebElement saveBtn;

    @FindBy(xpath = "(//div[1][text()='Save'])[2]")
    private WebElement saveBtn2;

    @FindBy(xpath = "//input[@id='renewalNotificationDays']")
    private WebElement renewalNotification;

    @FindBy(xpath = "//input[@id='enrolmentEmailNotificationDays']")
    private WebElement enrollmentNotification;

    @FindBy(xpath = "//div[contains(@class,'Snackbar_snackbar__text')]")
    private WebElement notificationUpdatedSuccess;

    @FindBy(xpath = "//div[text()='Renewal Notification Date']/following-sibling::div")
    private WebElement renewalNotificationDate;

    @FindBy(xpath = "//div[text()='Cancel Renewal']")
    private WebElement cancelRenewal;

    @FindBy(xpath = "//label[@for='versionId']")
    private WebElement renewalVersionId;

    @FindBy(xpath = "//input[@aria-label='version']")
    private WebElement renewalPolicyDropdown;

    @FindBy(xpath = "//input[@name='versionId']/preceding-sibling::div/div[2]")
    private WebElement selectRenewalPolicy;

    @FindBy(xpath = "//div[text()='Run Group Renewal Activation Job']")
    private WebElement runRenewalActivationJob;

    @FindBy(xpath = "//div[text()='Terminate Group']")
    private WebElement terminateGroup;

    @FindBy(xpath = "//input[@aria-label='Termination Type']")
    private WebElement terminationType;

    @FindBy(xpath = "//label[@for='terminationDate']/following-sibling::div")
    private WebElement terminationDate;

    @FindBy(xpath = "//div[@aria-label='Group Status']/div[2]")
    private WebElement groupStatus;

    @FindBy(xpath = "//div[text()='Master Policy Effective Date']/following-sibling::div")
    private WebElement masterPolicyEffectiveDate;

    @FindBy(xpath = "//input[@aria-label='Termination Date']")
    private WebElement enterTerminateDate;

    @FindBy(xpath = "//input[@aria-label='Termination Date']/../../../div[1]")
    private WebElement getTerminateDate;

    @FindBy(xpath = "//div[text()='Run Group Termination Job']")
    private WebElement runGroupTerminate;

    @FindBy(xpath = "//button[@aria-label='Clear value']")
    private WebElement clearDate;

    @FindBy(xpath = "//div[text()='Employee Id']/following-sibling::div")
    private WebElement verifyEmpId;

    @FindBy(xpath = "//div[text()='Enrollment Start Date']/following-sibling::div")
    private WebElement renewalEnrollmentStartDate;

    @FindBy(xpath = "//div[text()='Enrollment Status']/following-sibling::div")
    private WebElement verifyEmpStatus;

    @FindBy(xpath = "//*[contains(text(),'There was an error creating the user')]")
    private WebElement emailIdValidation;

    @FindBy(xpath = "//div[text()='updated contact A']")
    private WebElement verifyUpdateStatus;

    @FindBy(xpath = "//div[text()='Group']/following-sibling::div//a")
    private WebElement groupViewDetail;

    @FindBy(xpath = "//div[text()='Run Employee Dependent Migration Job']")
    private WebElement runEmpMigrationJob;

    @FindBy(xpath = "//a[@aria-label='Renew Policy']")
    private WebElement renewalPolicyBtn;

    @FindBy(xpath = "(//h3[text()='Silver']/following-sibling::div)[2]")
    private WebElement selectRenewalPetPlan;

    @FindBy(xpath = "//div[text()='Run Decline QLE By Group Job']")
    private WebElement runDeclineQleJob;

    @FindBy(xpath = "//div[text()='Request Status']/following-sibling::div")
    private WebElement qleRequestStatus;

    @FindBy(xpath = "//*[@class='sc-bczRLJ eQksrh']")
    private WebElement altreg;

    @FindBy(xpath = "//div[text()='Error']")
    private WebElement regError;

    @FindBy(xpath = "//input[@id='createQle']")
    private WebElement addPetToActivePolicy;

    @FindBy(xpath = "//tr[12]/td[3]/div")
    private WebElement payrollEndDate;

    @FindBy(xpath = "//button[contains(@class,'rangeBothEnds')]/following-sibling::button[1]")
    private WebElement nextActiveDate;

    @FindBy(xpath = "//div[text()='Run Group Policy Expiration Job']")
    private WebElement runGroupExpiryJob;

    @FindBy(xpath = "//tr[1]/td[3]/div")
    private WebElement retroTerminationDate;

    @FindBy(xpath = "(//input[@aria-label='Month'])[2]")
    private WebElement terminateDateInputMonth;

    @FindBy(xpath = "(//input[@aria-label='Day'])[2]")
    private WebElement terminateDateInputDay;

    @FindBy(xpath = "(//input[@aria-label='Year'])[2]")
    private WebElement terminateDateInputyear;

    public RenewalPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Renewal Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
