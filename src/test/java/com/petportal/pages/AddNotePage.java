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
public class AddNotePage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//input[@aria-label='Categories']")
    private WebElement addNoteCategories;

    @FindBy(xpath = "//input[@aria-label='Payroll Cycle']")
    private WebElement addNotePayrollCycle;

    @FindBy(xpath = "//textarea[@aria-label='Comment']")
    private WebElement addNoteComment;

    @FindBy(xpath = "//*[text()='Admin / Benbroker Changes']")
    private WebElement adminBenbrokerChanges;

    @FindBy(xpath = "//*[text()='1']")
    private WebElement selectPayrollCycle;

    @FindBy(xpath = "//textarea[@aria-label='Comment']")
    private WebElement noteComment;

    @FindBy(xpath = "//*[text()='Notes added successfully']")
    private WebElement noteAddedPopUp;

    @FindBy(xpath = "//div[text()='Notes']")
    private WebElement notesSelection;

    @FindBy(xpath = "//button[@aria-label='Delete']")
    private WebElement deleteNote;

    @FindBy(xpath = "//*[text()='Notes deleted successfully']")
    private WebElement noteDeletedPopUp;

    public AddNotePage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Add Note Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
