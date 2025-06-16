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
public class CommissionPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[text()='Edit Commission']")
    private WebElement editCommissionLink;

    @FindBy(xpath = "//div[@data-tip='edit']")
    private WebElement editCommissionBtn;

    @FindBy(xpath = "//div[contains(@class,'view__months')]//button[1]")
    private WebElement firstMonth;

    @FindBy(xpath = "//div[@data-tip='Delete']")
    private WebElement removeCommission;

    @FindBy(xpath = "//div[text()='No Commissions Found']")
    private WebElement noCommissionTxt;

    public CommissionPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Commission Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
