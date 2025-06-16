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
public class ReopenPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//button[@aria-label='Reopen']")
    private WebElement reopenBtn;

    @FindBy(xpath = "//label[@for='reopenReasonType']/following-sibling::div")
    private WebElement reopenRequestType;

    @FindBy(xpath = "//*[text()='Pet Is Eligible']")
    private WebElement selectReopenRequestType;

    @FindBy(xpath = "//div[text()='Request Status']/following-sibling::div")
    private WebElement requestStatus;

    @FindBy(xpath = "(//button[contains(@class,'next-button')])[2]")
    private WebElement calendarMonthChange2;

    @FindBy(xpath = "(//abbr[text()='1'])[3]")
    private WebElement selectTerminationDate;

    public ReopenPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Reopen Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
