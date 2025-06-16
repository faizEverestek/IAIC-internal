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
public class LifeEventsPage implements AbstractPage {

    private static final Map<String, WebElement> WEB_ELEMENT_MAPPING = new HashMap<>();

    @FindBy(xpath = "//button[@type='submit']")
    private WebElement verifyButton;

    @FindBy(xpath = "//a[@aria-label='Life Events']")
    private WebElement lifeEventLink;

    @FindBy(xpath = "//button[@aria-label='Assign To']")
    private WebElement assignTo;

    @FindBy(xpath = "//input[@aria-label='Assign to User']")
    private WebElement assignToUser;

    @FindBy(xpath = "//*[contains(text(),'@everestek.com')]")
    private WebElement selectUser;

    @FindBy(xpath = "//div[text()='Assigned To']/following-sibling::div//div[text()='Ashok Kumar']")
    private WebElement verifyAssignedUser;

    @FindBy(xpath = "//div[text()='QLE Type']/following-sibling::div")
    private WebElement VerifyQleType;

    @FindBy(xpath = "//button[@aria-label='Approve']")
    private WebElement approveQLE;

    @FindBy(xpath = "//button[@aria-label='Decline']")
    private WebElement declineQLE;

    @FindBy(xpath = "//a[@aria-label='Add Documents']")
    private WebElement addDocumentQLE;

    @FindBy(xpath = "//label[@for='declinedReasonType']/following-sibling::div")
    private WebElement declineReasonQLE;

    @FindBy(xpath = "//*[text()='Insufficient Documentation']")
    private WebElement selectDeclineReasonQLE;

    @FindBy(xpath = "//div[text()='Request Status']/following-sibling::div//div[text()='Approved']")
    private WebElement verifyApprovedQLE;

    @FindBy(xpath = "//div[text()='Request Status']/following-sibling::div//div[text()='Declined']")
    private WebElement verifyDeclinedQLE;

    @FindBy(xpath = "//button[@aria-label='Unassign']")
    private WebElement unassignUser;

    @FindBy(xpath = "//div[text()='Assigned To']/following-sibling::div//div[text()='NA']")
    private WebElement verifyUnAssignUser;

    public LifeEventsPage(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    @Override
    public Map<String, WebElement> elements() {
        return WEB_ELEMENT_MAPPING;
    }

    @Override
    public String name() {
        return "Life Events Page";
    }

    @Override
    public Map<String, List<WebElement>> elementsGroup() {
        // TODO Auto-generated method stub
        return null;
    }
}
