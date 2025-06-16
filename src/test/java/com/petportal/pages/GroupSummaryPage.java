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
public class GroupSummaryPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//button[@aria-label='View / Hide Filters']") private WebElement filterButton;
    @FindBy(xpath = "//input[@id='groupName']") private WebElement searchGroupName;
    @FindBy(xpath = "//input[@id='email']") private WebElement searchEmail;
    @FindBy(xpath = "(//div[contains(text(),'@automation.com')])[1]") private WebElement verifyEmail;
    @FindBy(xpath = "//input[@id='firstName']") private WebElement searchFirstName;
    @FindBy(xpath = "//input[@id='empId']") private WebElement searchEmpid;
    @FindBy(xpath = "//a[@aria-label='Activate']") private WebElement activateGroup;

    public GroupSummaryPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Group Summary Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
