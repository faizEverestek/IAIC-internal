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
public class PaymentReconcillationPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//div[text()='Report Type']/following-sibling::div//div[text()='PAYMENT_RECONCILIATION']")
    private WebElement paymentReconcillation;

    @FindBy(xpath = "//button[contains(@class,'label')]/span")
    private WebElement monthYear;

    @FindBy(xpath = "//div[text()='Run Pet Cash Premium Report Job']")
    private WebElement petCashPremiumBtn;

    @FindBy(xpath = "//div[contains(text(),'Run Group Commission Job')]")
    private WebElement runCommissionBtn;

    @FindBy(xpath = "//div[text()='Run Aging Report Job']")
    private WebElement runAgingBtn;

    public PaymentReconcillationPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Payment Reconcillation Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
