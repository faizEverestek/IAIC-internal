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
public class SFTPPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='SFTP Files']") private WebElement sftpLink;
    @FindBy(xpath = "(//a[@aria-label='View Details'])[1]") private WebElement viewDetails;
    @FindBy(xpath = "//input[@aria-label='Eror Message']") private WebElement errorMessage;
    @FindBy(xpath = "(//div[contains(text(),'Emp_AddressLine1')])[1]") private WebElement emp_AddressLine1;
    @FindBy(xpath = "(//div[contains(text(),'Emp_City')])[1]") private WebElement emp_City;
    @FindBy(xpath = "(//div[contains(text(),'Emp_Email')])[1]") private WebElement emp_Email;
    @FindBy(xpath = "(//div[contains(text(),'Emp_Lname')])[1]") private WebElement emp_Lname;
    @FindBy(xpath = "(//div[contains(text(),'Emp_State')])[1]") private WebElement emp_State;
    @FindBy(xpath = "(//div[contains(text(),'GroupNbr')])[1]") private WebElement groupNbr;
    @FindBy(xpath = "(//div[contains(text(),'Emp_PetBreed')])[1]") private WebElement emp_PetBreed;
    @FindBy(xpath = "(//div[contains(text(),'Emp PlanName')])[1]") private WebElement emp_PlanName;

    public SFTPPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "SFTP Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
