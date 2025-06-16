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
public class GroupDetailsPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//tr[2]/td[7]/div")
    private WebElement billDate;

    @FindBy(xpath = "//div[text()='Billing Calendar']")
    private WebElement billingCalendarTab;

    @FindBy(xpath = "//div[text()='Run Employee Payment Job']")
    private WebElement runEmploymentPaymentJob;

    @FindBy(xpath = "//div[text()='Run Group Payment Job']")
    private WebElement runGroupPaymentJob;

    @FindBy(xpath = "//div[text()='Generate Bill']")
    private WebElement generateBill;

    @FindBy(xpath = "//a[text()='Upload Remittance']")
    private WebElement uploadRemittance;

    @FindBy(xpath = "//*[text()='Delete Group']")
    private WebElement deleteGroup;

    @FindBy(xpath = "//*[text()='Remove All Employees']")
    private WebElement removeAllEmployees;

    @FindBy(xpath = "//*[text()='Add Notes']")
    private WebElement addNote;

    @FindBy(xpath = "//*[text()='Yes']")
    private WebElement deleteConfirmBtn;

    @FindBy(xpath = "//*[text()='Successfully deleted a Group']")
    private WebElement deleteConfirmMsg;

    @FindBy(xpath = "//*[text()='Successfully removed all employees']")
    private WebElement removeEmpMsg;

    @FindBy(xpath = "//*[text()='Successfully deleted an employee']")
    private WebElement deleteEmpMsg;

    @FindBy(xpath = "(//*[text()='Remove Pet'])[2]")
    private WebElement removePetbtn;

    @FindBy(xpath = "//label[@for='paymentType']/following-sibling::div")
    private WebElement paymentType;

    @FindBy(xpath = "//div[text()='Billing Reports']")
    private WebElement billingReports;

    @FindBy(xpath = "//div[text()='REMITTANCE']")
    private WebElement remittanceType;

    public GroupDetailsPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Group Details Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
