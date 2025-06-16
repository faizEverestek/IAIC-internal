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
public class EditPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//a[@aria-label='Edit Administrators']") private WebElement editAdmin;
    @FindBy(xpath = "//a[@aria-label='Edit Employee']") private WebElement editEmployee;
    @FindBy(xpath = "//button[@aria-label='edit']") private WebElement editAdminInfo;
    @FindBy(xpath = "//div[text()='Edit Admin']") private WebElement editAdminBtn;
    @FindBy(xpath = "//div[text()='Administrators']") private WebElement administratorsLink;
    @FindBy(xpath = "//td[text()='firstName1']") private WebElement firstNameText;
    @FindBy(xpath = "//div[text()='First Name']/following-sibling::div//div[text()='firstName1']") private WebElement verifyFirstName;
    @FindBy(xpath = "//a[@aria-label='Edit Locations']") private WebElement editLocation;
    @FindBy(xpath = "//div[text()='Location Details']") private WebElement editLocationLink;
    @FindBy(xpath = "//div[text()='Address']/following-sibling::div//div[text()='address11']") private WebElement verifyAddress;

    public EditPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Edit Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
