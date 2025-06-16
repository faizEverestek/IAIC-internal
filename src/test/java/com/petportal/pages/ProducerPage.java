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
public class ProducerPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Producers']")
    private WebElement producersLink;

    @FindBy(xpath = "//a[@aria-label='Sub-Producers']")
    private WebElement subProducersLink;

    @FindBy(xpath = "//a[@aria-label='Create Producer']")
    private WebElement createProducer;

    @FindBy(xpath = "//input[@id='producerCode']")
    private WebElement producerCode;

    @FindBy(xpath = "//label[@for='type']/following-sibling::div[1]")
    private WebElement producerType;

    @FindBy(xpath = "//*[text()='MGA']")
    private WebElement selectProducerType;

    @FindBy(xpath = "//input[@id='name']")
    private WebElement producerName;

    @FindBy(xpath = "//input[@aria-label='Authorized States']")
    private WebElement authorizedState;

    @FindBy(xpath = "//input[@aria-label='Authorized Provinces']")
    private WebElement authorizedProvinces;

    @FindBy(xpath = "//label[@for='status']/following-sibling::div[1]")
    private WebElement status;

    @FindBy(xpath = "//*[text()='Active']")
    private WebElement selectStatus;

    @FindBy(xpath = "//input[@id='address.addressLine1']")
    private WebElement producerAddress;

    @FindBy(xpath = "//input[@id='address.city']")
    private WebElement producerCity;

    @FindBy(xpath = "//input[@id='contactName']")
    private WebElement contactName;

    @FindBy(xpath = "//input[@id='contactAddress.addressLine1']")
    private WebElement contactAdd;

    @FindBy(xpath = "//input[@id='contactAddress.city']")
    private WebElement contactCity;

    @FindBy(xpath = "//label[@for='contactAddress.state']/following-sibling::div[1]")
    private WebElement contactState;

    @FindBy(xpath = "//input[@id='contactAddress.zipcode']")
    private WebElement contactZipcode;

    @FindBy(xpath = "//input[@id='contactEmail']")
    private WebElement contactEmail;

    @FindBy(xpath = "//div[text()='No']")
    private WebElement noBtn;

    @FindBy(xpath = "//div[text()='Producer Status']/following-sibling::div")
    private WebElement producerStatus;

    @FindBy(xpath = "//a[@aria-label='Create Sub Producer']")
    private WebElement createSubProducer;

    @FindBy(xpath = "//input[@id='subProducerCode']")
    private WebElement subProducerCode;

    @FindBy(xpath = "//div[text()='Status']/following-sibling::div")
    private WebElement subProducerStatus;

    @FindBy(xpath = "(//div[@aria-label='Producer Name']//div[2])[1]/div/div")
    private WebElement producerNameTxt;

    @FindBy(xpath = "(//div[@aria-label='Sub-Producer']//div[2])[1]/div/div")
    private WebElement subProducerNameTxt;

    public ProducerPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Producer Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
