package com.petportal.pages;

import com.petportal.base.web.AbstractPage;
import com.petportal.base.web.WebPage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.FindBy;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@WebPage
public class BenBrokerPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Ben Admin']") private WebElement benAdminLink;
    @FindBy(xpath = "//h2") private WebElement claimHeader;
    @FindBy(xpath = "//input[@id='name']") private WebElement serachBenAdminName;
    @FindBy(xpath = "//button[@aria-label='View / Hide Filters']") private WebElement filterButton;
    @FindBy(xpath = "(//div[@aria-label='Ben Admin Name']//div[2])[1]/div/div") private WebElement benAdminTxt;
    @FindBy(xpath = "//a[@aria-label='Groups']") private WebElement groupLink;
    @FindBy(xpath = "//button[@aria-label='Refresh Data']") private WebElement refreshBtn;
    @FindBy(xpath = "//a[@aria-label='Claims']") private WebElement claimLink;
    @FindBy(xpath = "//a[text()='Life Events']") private WebElement lifeEventLink;
    @FindBy(xpath = "(//div[@aria-label='Actions'])[1]") private WebElement permissionBenBroker;

    public BenBrokerPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Ben Broker Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
