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
public class EnrollmentPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Enroll']") private WebElement addEnrollmentBtn;
    @FindBy(xpath = "//div[text()='Ok']") private WebElement okBtn;
    @FindBy(xpath = "//div[text()='Okay']") private WebElement okayBtn;
    @FindBy(xpath = "//a[@aria-label='View Template Files']") private WebElement viewTemplateFiles;
    @FindBy(xpath = "(//a[@aria-label='View Errors'])[1]") private WebElement viewError;
    @FindBy(xpath = "//input[@id='react-select-8-input']") private WebElement reasonAddingPet;
    @FindBy(xpath = "//*[text()='Other']") private WebElement selectReasonAddingPet;
    @FindBy(xpath = "//input[@aria-label='Pet Species']") private WebElement petSpecies;
    @FindBy(xpath = "//*[text()='Dog']") private WebElement selectPetSpecies;
    @FindBy(xpath = "//input[@aria-label='Pet Name']") private WebElement petName;
    @FindBy(xpath = "//input[@aria-label='Pet Age at Effective Date (in years)']") private WebElement petAge;
    @FindBy(xpath = "//*[text()='2']") private WebElement selectPetAge;
    @FindBy(xpath = "//input[@aria-label='Pet Weight at Adulthood (in lbs)']") private WebElement petWeight;
    @FindBy(xpath = "//div[text()='Add Pet']") private WebElement addPetBtn;
    @FindBy(xpath = "//input[@aria-label='Pet Breed']") private WebElement petBreed;
    @FindBy(xpath = "//*[text()='Mixed Breed']") private WebElement selectPetBreed;
    @FindBy(xpath = "//h3[text()='Silver']/following-sibling::div") private WebElement selectPetPlan;
    @FindBy(xpath = "//label[@for='reasonType']/following-sibling::div") private WebElement reasonForLateEnrollment;
    @FindBy(xpath = "//*[text()='Marriage']") private WebElement selectReasonForLateEnrollment;
    @FindBy(xpath = "//input[@id='agreeMpi']") private WebElement agreeMPI;
    @FindBy(xpath = "//input[@id='agreeFW']") private WebElement agreeFW;
    @FindBy(xpath = "//input[@id='agreeAA']") private WebElement agreeAA;
    @FindBy(xpath = "//input[@id='agreeEC']") private WebElement agreeEC;
    @FindBy(xpath = "//div[text()='Run Group Enroll Job']") private WebElement runEnrollJobBtn;
    @FindBy(xpath = "//div[text()='Set Date']") private WebElement setDateBtn;
    @FindBy(xpath = "//div[text()='Enrollment Status']/following-sibling::div//div[text()='Enrolled']") private WebElement enrolledStatus;
    @FindBy(xpath = "(//abbr[text()='1'])[1]") private WebElement selectFirstOfNextMonth;
    @FindBy(xpath = "(//button[contains(@class,'next-button')])[1]") private WebElement selectNextMonth;
    @FindBy(xpath = "(//abbr[text()='1'])[2]") private WebElement selectFirstOfNextMonth2;
    @FindBy(xpath = "//div[text()='MGA Group Number']") private WebElement scrollToMGAGroup;
    @FindBy(xpath = "//label[@for='groupSize']") private WebElement groupSize;


    public EnrollmentPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Enrollment Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
