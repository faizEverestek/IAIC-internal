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
public class ProcessRemittancePage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//div[text()='1886 employee number does not exist for this group']")
    private WebElement incorrectEmpID;

    @FindBy(xpath = "//div[text()='GroupNbr must be equal to GPPI-03282']")
    private WebElement incorrectGroupID;

    @FindBy(xpath = "(//div[text()='Missing Value'])[1]")
    private WebElement blankValues;

    @FindBy(xpath = "//div[text()='Bill Date']")
    private WebElement blankBillDate;

    @FindBy(xpath = "//div[text()='Payroll Pay Date']")
    private WebElement blankPayrollPayDate;

    @FindBy(xpath = "(//div[text()='Employee Amount Deducted'])[1]")
    private WebElement negativeEmployeeAmountDeducted;

    @FindBy(xpath = "(//div[text()='Employer Amount Contributed'])[1]")
    private WebElement negativeEmployerAmountContributed;

    // Process Remittance file
    @FindBy(xpath = "//div[@aria-label='Credit Available']")
    private WebElement creditAvailable;

    @FindBy(xpath = "//div[@aria-label='Adjustment Paid']")
    private WebElement adjustmentPaid;

    @FindBy(xpath = "//div[@aria-label='Adjustment Applied']")
    private WebElement adjustmentApplied;

    public ProcessRemittancePage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Process Remittance Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
