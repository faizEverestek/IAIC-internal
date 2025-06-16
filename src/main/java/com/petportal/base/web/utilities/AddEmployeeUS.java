package com.petportal.base.web.utilities;

import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;
import java.time.Duration;
import static com.petportal.base.web.utilities.TestUtils.generateRandomInteger;
import static com.petportal.base.web.utilities.TestUtils.generateRandomString;

public class AddEmployeeUS {

    private WebDriver driver = null;
    private final WebDriverWait wait;

    public AddEmployeeUS(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(30));
    }

    static String firstName = generateRandomString(9);
    public static String email = "megha.dhotarkar"+"+"+firstName+"@everestek.com";

    public void normalAddEmployee(String enrollment) throws Exception {
        addNewEmployee();
        if(enrollment.equals("Enrolled")) {
            createEnrollStep1();
            createEnrollStep3();
            verifyEnrollment();
        }
    }

    private void addNewEmployee() {
        clickElement(By.xpath("//button[@aria-label='Add Employee']"));
        clickElement(By.xpath("//input[@aria-label='Employee Census Type']"));
        clickElement(By.xpath("//*[text()='Manual Input']"));
        sendKeysToElement(By.xpath("//input[@id='empId']"), generateRandomInteger(9));
        sendKeysToElement(By.xpath("//input[@id='firstName']"), firstName);
        sendKeysToElement(By.xpath("//input[@id='lastName']"), "kumar");
        sendKeysToElement(By.xpath("//input[@aria-label='Address Line 1']"), "address1");
        sendKeysToElement(By.xpath("//input[@aria-label='City']"), "city1");
        clickElement(By.xpath("//label[@for='address.state']/following-sibling::div[1]"));
        clickElement(By.xpath("//*[text()='Alaska']"));
        sendKeysToElement(By.xpath("(//input[@id='address.zipcode'])[1]"), "41105");
        sendKeysToElement(By.xpath("//input[@id='email']"), email);
        clickElement(By.xpath("//label[@for='locationName']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='location1']"));
        clickElement(By.xpath("//label[@for='dateOfHire']/following-sibling::div//button[@aria-label='Toggle calendar']"));
        clickElement(By.xpath("//button[@class='react-calendar__navigation__label']"));
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[1]"), "10");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[1]"), "2023");
        clickElement(By.xpath("//label[@for='phoneType']"));
        clickElement(By.xpath("//label[@for='employmentStatus']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Active']"));
        clickElement(By.xpath("//button[@aria-label='Create Employee']"));
    }

    private void createEnrollStep1() throws InterruptedException {
        JavascriptExecutor jse = (JavascriptExecutor)driver;
        jse.executeScript("window.scrollBy(0,250)");
        Thread.sleep(10000);
        clickElement(By.xpath("(//button[@aria-label='Enroll'])[1]"));
        clickElement(By.xpath("//input[@aria-label='Pet Species']"));
        clickElement(By.xpath("//*[text()='Dog']"));
        sendKeysToElement(By.xpath("//input[@aria-label='Pet Name']"), "My Dog");
        clickElement(By.xpath("//input[@aria-label='Pet Age at Effective Date (in years)']"));
        clickElement(By.xpath("//*[text()='2']"));
        sendKeysToElement(By.xpath("//input[@aria-label='Pet Weight at Adulthood (in lbs)']"), "2");
        clickElement(By.xpath("//input[@aria-label='Pet Breed']"));
        clickElement(By.xpath("//*[text()='Mixed Breed']"));
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//h3[text()='Silver']/following-sibling::div"));
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void createEnrollStep3() throws InterruptedException {
        clickElement(By.xpath("//button[@aria-label='Toggle calendar']"));
        clickElement(By.xpath("(//abbr[text()='1'])[1]"));
        clickElement(By.xpath("//input[@id='agreeMpi']"));
        clickElement(By.xpath("//input[@id='agreeFW']"));
        clickElement(By.xpath("//input[@id='agreeAA']"));
        clickElement(By.xpath("//input[@id='premiumChanges']"));
        clickElement(By.xpath("//input[@id='agreeEC']"));
        try {
            WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[text()='Pet Acquisition Date']")));
            if (element.isDisplayed()) {
                Thread.sleep(10000);
                clickElement(By.xpath("(//button[@aria-label='Toggle calendar'])[2]"));
                clickElement(By.xpath("(//*[text()='10'])[2]"));
                clickElement(By.xpath("//input[@aria-label='Reason For Late Enrollment']"));
                clickElement(By.xpath("//*[text()='Marriage']"));
                sendKeysToElement(By.xpath("//input[@aria-label='File Name']"), "Marriage Certificate");
                uploadToElement(By.xpath("//input[@class='filepond--browser']"), "src/test/testData/PDBA_Rating.csv");
            }
        } catch (NoSuchElementException e) {
            System.out.println("Element not found: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("An error occurred: " + e.getMessage());
        }
        clickElement(By.xpath("//div[text()='Submit']"));
        clickElement(By.xpath("//div[text()='Yes']"));
    }

    private void verifyEnrollment() throws InterruptedException {
        Thread.sleep(10000);
        clickElement(By.xpath("(//a[starts-with(@href, '/groups/')])[2]"));
        clickElement(By.xpath("//button[@aria-label='Toggle calendar']"));
        try {
            clickElement(By.xpath("(//button[contains(@class,'tile--now')]/following-sibling::button[1])"));
        } catch (Exception e) {
            System.out.println("Element is not clickable. Moving to the next step.");
        }
        clickElement(By.xpath("//div[text()='Set Date']"));
        Thread.sleep(5000);
        clickElement(By.xpath("//div[text()='Run Group Enroll Job']"));
        Thread.sleep(15000);
    }

    public void selectNewPayrollDate(int mouth) throws InterruptedException {
        clickElement(By.xpath("//div[text()='Billing Calendar']"));
        String billTxt = getText(By.xpath("//tr[" + mouth + "]/td[9]/div"));
        System.out.println(billTxt);
        String[] dateParts = billTxt.split("/");
        int month = Integer.parseInt(dateParts[0]);
        int day = Integer.parseInt(dateParts[1]);
        int year = Integer.parseInt(dateParts[2]);
        JavascriptExecutor jse = (JavascriptExecutor)driver;
        jse.executeScript("window.scrollBy(0,0)");
        clickElement(By.xpath("//button[@aria-label='Toggle calendar']"));
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[1]"), String.valueOf(month));
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[1]"), String.valueOf(day));
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[1]"), String.valueOf(year));
        clickElement(By.xpath("//div[text()='Set Date']"));
        Thread.sleep(5000);
        driver.navigate().refresh();
        clickElement(By.xpath("//div[text()='Generate Bill']"));
        Thread.sleep(15000);
    }


    private void sendKeysToElement(By locator, String keys) {
        WebElement element = wait.until(ExpectedConditions.elementToBeClickable(locator));
        element.sendKeys(keys);
    }

    private void clickElement(By locator) {
        WebElement element = wait.until(ExpectedConditions.elementToBeClickable(locator));
        try {
            element.click();
        } catch (Exception e1) {
            try {
                // If normal click fails, use JavaScript click
                JavascriptExecutor js = (JavascriptExecutor) driver;
                js.executeScript("arguments[0].scrollIntoView(true); arguments[0].click();", element);
            } catch (Exception e2) {
                // If JavaScript click fails, use Actions class
                Actions actions = new Actions(driver);
                actions.moveToElement(element).click().perform();
            }
        }
    }

    private String getText(By locator) {
        WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(locator));
        return element.getText();
    }

    private void uploadToElement(By locator, String path) throws InterruptedException {
        Thread.sleep(5000);
        path = path.replace("\\", File.separator);
        WebElement element = driver.findElement(locator);
        ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
        element.sendKeys(System.getProperty("user.dir") + File.separator + path);
    }

    private void validateText(By locator) {
        WebElement element = wait.until(ExpectedConditions.elementToBeClickable(locator));
        String actualString = element.getText();
        actualString.equalsIgnoreCase("Enrolled");
    }
}
