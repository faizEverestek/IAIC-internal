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
public class GroupActivationPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//input[@id='eligibilityClassName']") private WebElement className;
    @FindBy(xpath = "//label[@for='driverValue[0].name']/following-sibling::div") private WebElement chooseDriver;
    @FindBy(xpath = "//*[text()='Job title']") private WebElement selectDriver;
    @FindBy(xpath = "//input[@id='driverValue[0].jobTitle_FIELD']") private WebElement jobTitleValue;
    @FindBy(xpath = "//div[text()='Create Eligibility Class']") private WebElement addDriverBtn;

    // group activation step 2
    @FindBy(xpath = "//div[text()='Add Plan']") private WebElement addPlan;
    @FindBy(xpath = "//input[@id='planName_0']") private WebElement planName;
    @FindBy(xpath = "//input[@id='planName_1']") private WebElement planNameG;
    @FindBy(xpath = "//label[@for='productId_0']/following-sibling::div") private WebElement product;
    @FindBy(xpath = "//label[@for='productId_1']/following-sibling::div") private WebElement productG;
    @FindBy(xpath = "//*[text()='Accident Only']") private WebElement selectProduct;
    @FindBy(xpath = "//*[text()='Accident & Illness']") private WebElement selectProductIllness;
    @FindBy(xpath = "//label[@for='annualLimit_0']/following-sibling::div") private WebElement annualLimit;
    @FindBy(xpath = "//label[@for='annualLimit_1']/following-sibling::div") private WebElement annualLimitG;
    @FindBy(xpath = "//*[text()='$500']") private WebElement selectAnnualLimit;
    @FindBy(xpath = "//*[text()='$1000']") private WebElement selectAnnualLimitG;
    @FindBy(xpath = "//input[@aria-label='Diminishing Deductible']") private WebElement diminishingDeductible;
    @FindBy(xpath = "//*[text()='$25']") private WebElement selectDiminishingDeductible;
    @FindBy(xpath = "//label[@for='annualDeductible_0']/following-sibling::div") private WebElement annualDeductible;
    @FindBy(xpath = "//label[@for='annualDeductible_1']/following-sibling::div") private WebElement annualDeductibleG;
    @FindBy(xpath = "//*[text()='$50']") private WebElement selectAnnualDeductible;
    @FindBy(xpath = "//*[text()='$200']") private WebElement selectAnnualDeductibleG;
    @FindBy(xpath = "//label[@for='coinsurance_0']/following-sibling::div") private WebElement coinsurance;
    @FindBy(xpath = "//label[@for='coinsurance_1']/following-sibling::div") private WebElement coinsuranceG;
    @FindBy(xpath = "//*[text()='50%']") private WebElement selectCoInsurance;
    @FindBy(xpath = "//*[text()='70%']") private WebElement selectCoInsuranceG;
    @FindBy(xpath = "//input[@aria-label='Per Incident Copay']") private WebElement perIncidentCopay;
    @FindBy(xpath = "(//*[text()='Not Included'])[6]") private WebElement selectPerIncidentCopay;
    @FindBy(xpath = "//input[@aria-label='Wellness']") private WebElement wellness;
    @FindBy(xpath = "(//*[text()='Not Included'])[7]") private WebElement selectWellness;
    @FindBy(xpath = "//label[@for='riderRPT_0']/following-sibling::div") private WebElement therapy;
    @FindBy(xpath = "//label[@for='riderRPT_1']/following-sibling::div") private WebElement therapyG;
    @FindBy(xpath = "//*[text()='Not Included']") private WebElement notIncluded;
    @FindBy(xpath = "(//*[text()='Not Included'])[8]") private WebElement notIncludedG;
    @FindBy(xpath = "//*[text()='Included']") private WebElement included;
    @FindBy(xpath = "//label[@for='riderOETC_0']/following-sibling::div") private WebElement consultant;
    @FindBy(xpath = "(//*[text()='Not Included'])[2]") private WebElement selectConsultant;
    @FindBy(xpath = "//label[@for='riderOETC_1']/following-sibling::div") private WebElement consultantG;
    @FindBy(xpath = "(//*[text()='Not Included'])[9]") private WebElement selectConsultantG;
    @FindBy(xpath = "//label[@for='riderAC_0']/following-sibling::div") private WebElement alternateCare;
    @FindBy(xpath = "(//*[text()='Not Included'])[3]") private WebElement selectAlternateCare;
    @FindBy(xpath = "//input[@aria-label='Alternative and Behavioral Care']") private WebElement alternateBehavioralCare;
    @FindBy(xpath = "(//*[text()='Not Included'])[10]") private WebElement selectAlternateBehavioralCare;
    @FindBy(xpath = "//label[@for='riderFR_0']/following-sibling::div") private WebElement finalRespect;
    @FindBy(xpath = "(//*[text()='Not Included'])[4]") private WebElement selectFinalRespect;
    @FindBy(xpath = "//label[@for='riderFR_1']/following-sibling::div") private WebElement finalRespectG;
    @FindBy(xpath = "(//*[text()='Not Included'])[11]") private WebElement selectFinalRespectG;
    @FindBy(xpath = "//label[@for='riderRD_0']/following-sibling::div") private WebElement dental;
    @FindBy(xpath = "//*[text()='$100']") private WebElement selectDental;
    @FindBy(xpath = "//label[@for='riderRD_1']/following-sibling::div") private WebElement dentalG;
    @FindBy(xpath = "(//*[text()='$100'])[2]") private WebElement selectDentalG;
    @FindBy(xpath = "//label[@for='poa_0']/following-sibling::div") private WebElement assistance;
    @FindBy(xpath = "(//*[text()='Not Included'])[5]") private WebElement selectAssistant;
    @FindBy(xpath = "//label[@for='poa_1']/following-sibling::div") private WebElement assistanceG;
    @FindBy(xpath = "(//*[text()='Not Included'])[12]") private WebElement selectAssistantG;
    @FindBy(xpath = "//label[@for='bwpInjuries_0']/following-sibling::div") private WebElement injuries;
    @FindBy(xpath = "//*[text()='Waived']") private WebElement selectInjuries;
    @FindBy(xpath = "//label[@for='bwpInjuries_1']/following-sibling::div") private WebElement injuriesG;
    @FindBy(xpath = "(//*[text()='Waived'])[2]") private WebElement selectInjuriesG;
    @FindBy(xpath = "//input[@aria-label='Inherited and Congenital Care']") private WebElement inheritedCongenitalCare;
    @FindBy(xpath = "(//*[text()='Not Included'])[13]") private WebElement selectInheritedCongenitalCare;
    @FindBy(xpath = "//input[@aria-label='Benefit Waiting Period: Illness']") private WebElement waitingPeriodIllness;
    @FindBy(xpath = "(//*[text()='Waived'])[3]") private WebElement selectWaitingPeriodIllness;
    @FindBy(xpath = "//label[@for='existingCondition_0']/following-sibling::div") private WebElement existingCondition;
    @FindBy(xpath = "//*[contains(text(),'6 months look back')]") private WebElement selectExistingCondition;
    @FindBy(xpath = "//label[@for='existingCondition_1']/following-sibling::div") private WebElement existingConditionG;
    @FindBy(xpath = "(//*[contains(text(),'6 months look back')])[2]") private WebElement selectExistingConditionG;
    @FindBy(xpath = "//input[@aria-label='Maximum Issue Age of Pet at Effective Date']") private WebElement maximumIssueAge;
    @FindBy(xpath = "//*[text()='10 years']") private WebElement selectMaximumIssueAge;
    @FindBy(xpath = "//input[@aria-label='Prior Coverage Credit']") private WebElement priorCoverageCredit;
    @FindBy(xpath = "(//*[text()='Not Included'])[14]") private WebElement selectPriorCoverageCredit;
    @FindBy(xpath = "//input[@id='weightLimitA_0']") private WebElement weightAvalue;
    @FindBy(xpath = "//input[@id='weightLimitB_0']") private WebElement weightBvalue;
    @FindBy(xpath = "//input[@id='weightLimitC_0']") private WebElement weightCvalue;
    @FindBy(xpath = "//input[@id='weightLimitA_1']") private WebElement weightAvalueG;
    @FindBy(xpath = "//input[@id='weightLimitB_1']") private WebElement weightBvalueG;
    @FindBy(xpath = "//input[@id='weightLimitC_1']") private WebElement weightCvalueG;

    @FindBy(xpath = "//label[@for='coverageFromDate']/..//button[@aria-label='Toggle calendar']") private WebElement dateOfIssue;
    @FindBy(xpath = "(//label[@for='coverageToDate']/..//button[@aria-label='Toggle calendar'])[1]") private WebElement renewalDate;
    @FindBy(xpath = "(//button[contains(@class,'next2-button')])") private WebElement renewalYearChange;
    @FindBy(xpath = "(//div[contains(@class,'viewContainer')])//div[contains(@class,'month-view__days')]/button[32]") private WebElement renewalDateSelect;
    @FindBy(xpath = "(//button[contains(@class,'prev-button')])") private WebElement selectPreviousMonth;
    @FindBy(xpath = "//label[@for='enrollmentFromDate']/..//button[@aria-label='Toggle calendar']") private WebElement enrollmentFromDate;
    @FindBy(xpath = "(//div[contains(@class,'viewContainer')])//div[contains(@class,'month-view__days')]/button[20]") private WebElement enrollmentFromDatePicker;
    @FindBy(xpath = "//label[@for='enrollmentToDate']/..//button[@aria-label='Toggle calendar']") private WebElement enrollmentToDate;
    @FindBy(xpath = "(//button[contains(@class,'next2-button')])[4]") private WebElement ernrollToYearChange;
    @FindBy(xpath = "(//div[contains(@class,'month-view__days')])//button[contains(@class,'tile--now')]/following-sibling::button[1]") private WebElement enrollmentToDatePicker;
    @FindBy(xpath = "//input[contains(@id,'employerContribution')]") private WebElement employerContribution;
    @FindBy(xpath = "(//input[contains(@id,'employerContribution')])[2]") private WebElement employerContributionG;
    @FindBy(xpath = "//label[@for='effectiveDate']/..//button[@aria-label='Toggle calendar']") private WebElement effectiveDate;

    // group activation step 4 page
    @FindBy(xpath = "//input[@id='totalCommissionPercentage']") private WebElement totalCommission;
    @FindBy(xpath = "//label[@for='commissions[0].producerDetail.producerId']/following-sibling::div") private WebElement producer;
    @FindBy(xpath = "//*[text()='Maxell life']") private WebElement selectProducer;
    @FindBy(xpath = "//label[@for='commissions[0].subProducer.subProducerId']/following-sibling::div") private WebElement subproducer;
    @FindBy(xpath = "//*[text()='Kiwik life']") private WebElement selectSubProducer;
    @FindBy(xpath = "//input[@aria-label='Commission in %']") private WebElement commissionIn;
    @FindBy(xpath = "//h3") private WebElement header;
    @FindBy(xpath = "//h2") private WebElement headerH2;

    @FindBy(xpath = "//input[@class='filepond--browser']") private WebElement addFiles;
    @FindBy(xpath = "//*[text()='Census File Upload']") private WebElement selectEmployeeCensusType;

    // step 6 group activation
    @FindBy(xpath = "//div[text()='Summary']") private WebElement summary;
    @FindBy(xpath = "//input[@aria-label='Employee Census Type']") private WebElement employeeCensusType;
    @FindBy(xpath = "//*[text()='Pet Level Post Enrollment File Upload']") private WebElement postEnrollmentFileUpload;
    @FindBy(xpath = "//div[text()='Submit']") private WebElement submitBtn;
    @FindBy(xpath = "//div[text()='Confirm Submission']") private WebElement confirm;
    @FindBy(xpath = "//div[text()='Yes']") private WebElement yesBtn;
    @FindBy(xpath = "//div[text()='Done']") private WebElement doneBtn;
    @FindBy(xpath = "//a[@aria-label='Edit']") private WebElement editGroup;
    @FindBy(xpath = "(//a[@aria-label='View'])[1]") private WebElement viewGroup;
    @FindBy(xpath = "//a[@aria-label='Upload Template']") private WebElement uploadTemplate;
    @FindBy(xpath = "(//*[text()='Plan Test'])") private WebElement groupNameTxt;

    public GroupActivationPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Group Activation Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
