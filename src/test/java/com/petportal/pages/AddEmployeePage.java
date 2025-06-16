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
public class AddEmployeePage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath="//button[@aria-label='Add Employee']") private WebElement addEmployee;
    @FindBy(xpath="//*[text()='Manual Input']") private WebElement selectManualInput;
    @FindBy(xpath="//input[@aria-label='Employee Census Type']") private WebElement employeeCensusType;
    @FindBy(xpath="//*[text()='Group Template File Upload']") private WebElement selectGroupTemplateFileUpload;
    @FindBy(xpath="//*[text()='Enrollment File Upload']") private WebElement selectEnrollmentUpload;
    @FindBy(xpath="//input[@id='empId']") private WebElement empId;
    @FindBy(xpath="//label[@for='address.state']/following-sibling::div[1]") private WebElement stateAddEmployee;
    @FindBy(xpath="//input[@id='address.zipcode']") private WebElement zipcodeAddEmployee;
    @FindBy(xpath="//label[@for='locationName']/following-sibling::div") private WebElement officeLocation;
    @FindBy(xpath="//label[@for='dateOfHire']/following-sibling::div//button[@aria-label='Toggle calendar']") private WebElement dateOfHire;
    @FindBy(xpath="//label[@for='employmentStatus']/following-sibling::div") private WebElement employeeStatus;
    @FindBy(xpath="//*[text()='Active']") private WebElement selectEmployeeStatus;
    @FindBy(xpath="//button[@aria-label='Create Employee']") private WebElement createEmployeeBtn;
    @FindBy(xpath="//div[text()='Enrollment Status']/following-sibling::div") private WebElement enrollmentStatus;
    @FindBy(xpath="//button[@aria-label='Refresh Data']") private WebElement refreshBtn;
    @FindBy(xpath="//div[text()='Incorrect Columns']") private WebElement fileStatus;
    @FindBy(xpath="//div[text()='Employee Level Post Enrollment File Upload']") private WebElement employeeLevel;
    @FindBy(xpath="//div[text()='Pet Level Post Enrollment File Upload']") private WebElement petLevel;

    public AddEmployeePage(WebDriver driver) {
        PageFactory.initElements(driver, this);
        WEB_ELEMENT_MAPPING.put("Add Employee", addEmployee);
        WEB_ELEMENT_MAPPING.put("Employee Census Type", employeeCensusType);
        WEB_ELEMENT_MAPPING.put("Employee Level Post Enrollment File Upload", employeeLevel);
        WEB_ELEMENT_MAPPING.put("Pet Level Post Enrollment File Upload", petLevel);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Add Employee Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
