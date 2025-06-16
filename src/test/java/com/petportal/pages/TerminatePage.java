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
public class TerminatePage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "(//div[@data-tip='Terminate'])[1]")
    private WebElement terminateEmpBtn;

    @FindBy(xpath = "(//div[@data-tip='Delete Employee'])[1]")
    private WebElement deleteEmpBtn;

    @FindBy(xpath = "//label[@for='terminationType']/following-sibling::div")
    private WebElement terminationType;

    @FindBy(xpath = "//*[text()='Resignation']")
    private WebElement selectTerminationType;

    @FindBy(xpath = "//div[text()='submit']")
    private WebElement submitBtn1;

    @FindBy(xpath = "//div[@data-tip='Add Documents']")
    private WebElement addDocumentBtn;

    public TerminatePage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Terminate Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
