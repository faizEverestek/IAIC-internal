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
public class AddPetPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Add Pet']")
    private WebElement addPetBtn;

    @FindBy(xpath = "//a[@aria-label='Enrollments']")
    private WebElement enrollmentLink;

    @FindBy(xpath = "//label[@for='pet.species']/following-sibling::div")
    private WebElement petSpeciesQLE;

    @FindBy(xpath = "//label[@for='reasonType']/following-sibling::div")
    private WebElement reasonForAddingPet;

    @FindBy(xpath = "//label[@for='pet.age']/following-sibling::div")
    private WebElement petAgeQLE;

    @FindBy(xpath = "//input[@id='pet.weight']")
    private WebElement petWeightQLE;

    @FindBy(xpath = "//label[@for='pet.breed']/following-sibling::div")
    private WebElement petBreedQLE;

    @FindBy(xpath = "//div[text()='Calculate Premium']")
    private WebElement calculatePremium;

    @FindBy(xpath = "//div[text()='Inactive Pet Information']")
    private WebElement inactivePetInfoLink;

    @FindBy(xpath = "//div[@aria-label='Pet Name']//div[text()='abc']")
    private WebElement inactivePetName;

    @FindBy(xpath = "//div[text()='No Results']")
    private WebElement noResult;

    @FindBy(xpath = "//div[text()='Pet Information']")
    private WebElement petInformationLink;

    @FindBy(xpath = "//button[@aria-label='Remove']")
    private WebElement removePet;

    public AddPetPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Add Pet Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
