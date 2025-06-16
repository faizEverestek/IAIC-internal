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
public class ClaimPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Claims']")
    private WebElement claimLink;

    @FindBy(xpath = "//div[@data-tip='Create Claim']")
    private WebElement createClaimBtn;

    @FindBy(xpath = "//input[@aria-label='Select Group']")
    private WebElement selectGroup;

    @FindBy(xpath = "//input[@aria-label='Select Employee']")
    private WebElement selectEmployee;

    @FindBy(xpath = "//input[@aria-label='Select Pet']")
    private WebElement selectPet;

    @FindBy(xpath = "//input[@aria-label='DOES YOUR PET HAVE ADDITIONAL INSURANCE?']")
    private WebElement isInsurance;

    @FindBy(xpath = "//input[contains(@aria-label,'illness')]")
    private WebElement illnessInfo;

    @FindBy(xpath = "(//button[@aria-label='Toggle calendar'])[1]")
    private WebElement calendarBtn1;

    @FindBy(xpath = "(//button[@aria-label='Toggle calendar'])[2]")
    private WebElement calendarBtn2;

    @FindBy(xpath = "(//button[@aria-label='Toggle calendar'])")
    private WebElement terminationCalender;

    @FindBy(xpath = "//button[contains(@class,'tile--now')]")
    private WebElement symptomDate;

    @FindBy(xpath = "(//button[contains(@class,'tile--now')])[1]")
    private WebElement treatmentDate;

    @FindBy(xpath = "//input[@aria-label='Reimbursement Methods']")
    private WebElement reimbursementMethod;

    @FindBy(xpath = "//input[@id='acceptance']")
    private WebElement agree;

    @FindBy(xpath = "//div[@data-tip='Received']")
    private WebElement claimStatus;

    @FindBy(xpath = "//h2")
    private WebElement claimHeader;

    @FindBy(xpath = "//input[@id='externalClaimId']")
    private WebElement claimId;

    @FindBy(xpath = "//button[@aria-label='View / Hide Filters']")
    private WebElement filterButton;

    public ClaimPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Claim Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
