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
public class PayrollGeneratePage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//tr[2]/td[8]/div")
    private WebElement payrollDate;

    @FindBy(xpath = "//tr[2]/td[7]/div")
    private WebElement actualPayrollDate;

    @FindBy(xpath = "//button[@class='react-calendar__navigation__label']/span")
    private WebElement calendarMonthTxt;

    @FindBy(xpath = "//div[text()='AUTO_GENERATED_PAYROLL_DEDUCTION']")
    private WebElement payrollDeduction;

    @FindBy(xpath = "(//div[@data-tip='Download'])[1]")
    private WebElement downloadPayrollBill;

    public PayrollGeneratePage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Payroll Generate Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
