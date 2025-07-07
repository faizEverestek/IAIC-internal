package com.petportal.base.web.utilities;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;

import static com.petportal.base.web.utilities.TestUtils.generateRandomString;

public class GroupCreatorQA1 extends CSVModifier {

    public static String newGroupName1 = getLatestGroupName();

    private final WebDriver driver;
    private final WebDriverWait wait;

    String firstName = generateRandomString(9);

    public GroupCreatorQA1(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(30));
    }

    public void waitForPageToLoad() {
        new WebDriverWait(driver, Duration.ofSeconds(30)).until(webDriver ->
                ((JavascriptExecutor) webDriver).executeScript("return document.readyState").equals("complete"));
    }

    public String normalGroupCreation(String groupType) throws Exception {
        configureGroupStep1(groupType);
        String groupNumber = configureGroupStep2(newGroupName1);
        configureGroupStep3();
        configureGroupStep4(newGroupName1);
        configureGroupStep5();
        verifyGroupCreated(newGroupName1);
        activateGroupStep2();
        activateGroupStep3();
        activateGroupStep4();
        activateGroupStep5(newGroupName1, groupType);
        verifyGroupActivated(newGroupName1);
        return groupNumber;
    }

    private void configureGroupStep1(String groupType) throws InterruptedException {
        waitForPageToLoad();
        clickElement(By.xpath("//a[@aria-label='Groups']"));
        clickElement(By.xpath("//a[@aria-label='Create Group']"));
        clickElement(By.xpath("//input[@aria-label='Group Type']"));
        if(groupType.equalsIgnoreCase("IAIC Administered")) {
            clickElement(By.xpath("//*[text()='IAIC Administered']"));
        }
        if(groupType.equalsIgnoreCase("Ben Admin Administered")) {
            clickElement(By.xpath("//*[text()='Ben Admin Administered']"));
            clickElement(By.xpath("//label[@for='benAdminId']/following-sibling::div[1]"));
            sendKeysToElement(By.xpath("(//input[@aria-autocomplete='list'])[2]"), "AutomaPDBAtion ");
            Thread.sleep(10000);
            clickElement(By.xpath("//*[text()='Automation PDBA (Post Enrollment Included)']"));
        }
        if(groupType.equalsIgnoreCase("Ben Admin Administered (Post Enrollment not Included)")) {
            clickElement(By.xpath("//*[text()='Ben Admin Administered']"));
            clickElement(By.xpath("//label[@for='benAdminId']/following-sibling::div[1]"));
            sendKeysToElement(By.xpath("(//input[@aria-autocomplete='list'])[2]"), "Ben Admin PDBA");
            Thread.sleep(10000);
            clickElement(By.xpath("//*[text()='Ben Admin PDBA (Post Enrollment Not Included)']"));
        }
        clickElement(By.xpath("//input[@aria-label='Group MGA']"));
        clickElement(By.xpath("//*[text()='Pet Partner']"));
        sendKeysToElement(By.xpath("//input[@aria-label='Federal Number']"), "123456789");
        clickElement(By.xpath("//input[@aria-label='Company Code']"));
        clickElement(By.xpath("//*[text()='US']"));
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private String configureGroupStep2(String newGroupName) {
        waitForPageToLoad();
        sendKeysToElement(By.xpath("//input[@id='sicCode']"), "1234");
        WebElement mgaGroupNumberInput = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//input[@id='groupNumber']")));
        String groupNumber = mgaGroupNumberInput.getAttribute("value");
        sendKeysToElement(By.xpath("//input[@id='groupName']"), newGroupName);
        sendKeysToElement(By.xpath("//input[@aria-label='Location Name']"), "location1");
        sendKeysToElement(By.xpath("//input[@aria-label='Address Line 1']"), "Your Address Line 1");
        sendKeysToElement(By.xpath("//input[@aria-label='City']"), "Pune");
        clickElement(By.xpath("//label[@for='locations[0].address.state']/following-sibling::div[1]"));
        clickElement(By.xpath("//*[text()='Alaska']"));
        sendKeysToElement(By.xpath("//input[@id='locations[0].address.zipcode']"), "411057");
        clickElement(By.xpath("//label[@for='locations[0].contact.contactType']/following-sibling::div[1]"));
        clickElement(By.xpath("//*[text()='Home']"));
        sendKeysToElement(By.xpath("//input[@aria-label='Contact Number']"), "0987654321");
        clickElement(By.xpath("//div[text()='Next']"));
        return groupNumber;
    }

    private void configureGroupStep3() {
        waitForPageToLoad();
        clickElement(By.xpath("//label[@for='newHireWaitingPeriod']/following-sibling::div[1]"));
        clickElement(By.xpath("//*[text()='N/A']"));
//        sendKeysToElement(By.xpath("//input[@id='isFirstFollowingWaitingPeriod']"), "");
        sendKeysToElement(By.xpath("//input[@id='enrollmentPeriod']"), "20");
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void configureGroupStep4(String newGroupName) {
        waitForPageToLoad();
        clickElement(By.xpath("//label[@for='adminContactType']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Add New Admin']"));
        sendKeysToElement(By.xpath("//input[@id='firstName']"), firstName);
        sendKeysToElement(By.xpath("//input[@id='lastName']"), "lastName");
        sendKeysToElement(By.xpath("//input[@id='email']"), "megha.dhotarkar+"+firstName+"@everestek.com");
        clickElement(By.xpath("//label[@for='contactType']/following-sibling::div[1]"));
        clickElement(By.xpath("//*[text()='Home']"));
        sendKeysToElement(By.xpath("//input[@id='phoneNumber']"), "0987654321");
        clickElement(By.xpath("//div[text()='Create Admin']"));
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void configureGroupStep5() throws InterruptedException {
        Thread.sleep(5000);
        clickElement(By.xpath("//input[@id='billingAddress']"));
        sendKeysToElement(By.xpath("//input[@id='phoneNumber']"), "0987654321");
        sendKeysToElement(By.xpath("//input[@id='accountName']"), "1234567890");
        clickElement(By.xpath("//label[@for='accountType']/following-sibling::div[1]"));
        clickElement(By.xpath("//*[text()='ACH Manual']"));
        clickElement(By.xpath("//label[@for='billingType']/following-sibling::div[1]")); // Click on billing type
//        clickElement(By.xpath("//*[text()='Pay In Advance']")); // Select Pay In Advance
        clickElement(By.xpath("//*[text()='Pay In Arrears']")); // Select Pay In Arrears
        clickElement(By.xpath("//label[@for='billingCycle']/following-sibling::div[1]")); // Click on billing cycle
        clickElement(By.xpath("(//*[text()='12'])[1]")); // Select 12 for billing cycle
        clickElement(By.xpath("//label[@for='payrollFrequency']/following-sibling::div[1]")); // Click on payroll frequency
        clickElement(By.xpath("(//*[text()='12'])[2]")); // Select 12 for payroll frequency
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[1]"), "2026");
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[2]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[2]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[2]"), "2026");
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[3]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[3]"), "20");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[3]"), "2026");
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[4]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[4]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[4]"), "2026");
//        clickElement(By.xpath("//div[text()='Generate Payroll Cycle']"));
        clickElement(By.xpath("//button[@type='submit']")); // Assuming this button submits the form
        clickElement(By.xpath("//h2[text()='Groups Dashboard']")); // Navigate back to groups dashboard
    }

    private void verifyGroupCreated(String newGroupName) throws InterruptedException {
        waitForPageToLoad();
        clickElement(By.xpath("//button[contains(@class,'DropdownMenu')]"));
        clickElement(By.xpath("//*[text()='All Groups']"));
        Thread.sleep(7000);
        clickElement(By.xpath("//button[@aria-label='View / Hide Filters']"));
        sendKeysToElement(By.xpath("//input[@id='groupName']"), newGroupName);
        Thread.sleep(10000);
        clickElement(By.xpath("//a[@aria-label='Activate']"));
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void activateGroupStep2() {
        waitForPageToLoad();
        sendKeysToElement(By.xpath("//input[@id='planName_0']"), "Silver");
        clickElement(By.xpath("//label[@for='productId_0']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Accident Only']"));
        clickElement(By.xpath("//label[@for='annualLimit_0']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='$500']"));
        clickElement(By.xpath("//input[@aria-label='Annual Deductible']"));
        clickElement(By.xpath("//*[text()='$50']"));
        clickElement(By.xpath("//label[@for='coinsurance_0']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='50%']"));
        clickElement(By.xpath("(//input[@aria-label='Rehabilitation and Physical Therapy'])[1]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[1]"));
        clickElement(By.xpath("(//input[@aria-label='Office Exams and Telehealth Consult'])[1]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[2]"));
        clickElement(By.xpath("//input[@aria-label='Alternative Care']"));
        clickElement(By.xpath("(//*[text()='Not Included'])[3]"));
        clickElement(By.xpath("(//input[@aria-label='Final Respects'])[1]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[4]"));
        clickElement(By.xpath("(//input[@aria-label='Routine Dental'])[1]"));
        clickElement(By.xpath("(//*[text()='$100'])[1]"));
        clickElement(By.xpath("(//input[@aria-label='Pet Owner Assistance Rider'])[1]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[5]"));
        clickElement(By.xpath("(//input[@aria-label='Benefit Waiting Period: Injuries'])[1]"));
        clickElement(By.xpath("(//*[text()='Waived'])[1]"));
        clickElement(By.xpath("(//input[@aria-label='Pre-Existing Condition'])[1]"));
        clickElement(By.xpath("//*[contains(text(),'6 months look back')]"));
        sendKeysToElement(By.xpath("//input[@id='weightLimitA_0']"), "20");
        sendKeysToElement(By.xpath("//input[@id='weightLimitB_0']"), "40");
        sendKeysToElement(By.xpath("//input[@id='weightLimitC_0']"), "60");
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollTo(0, 0);");
        clickElement(By.xpath("//*[text()='Add Plan']"));
        sendKeysToElement(By.xpath("//input[@id='planName_1']"), "Gold");
        clickElement(By.xpath("//label[@for='productId_1']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Accident & Illness']"));
        clickElement(By.xpath("//label[@for='annualLimit_1']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='$1000']"));
        clickElement(By.xpath("//label[@for='annualDeductible_1']/following-sibling::div"));
        clickElement(By.xpath("(//*[text()='$100'])[2]"));
        clickElement(By.xpath("//label[@for='coinsurance_1']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='70%']"));
        clickElement(By.xpath("//input[@aria-label='Diminishing Deductible']"));
        clickElement(By.xpath("//*[text()='$25']"));
        clickElement(By.xpath("//input[@aria-label='Per Incident Copay']"));
        clickElement(By.xpath("(//*[text()='Not Included'])[6]"));
        clickElement(By.xpath("//input[@aria-label='Wellness']"));
        clickElement(By.xpath("(//*[text()='Not Included'])[7]"));
        clickElement(By.xpath("(//input[@aria-label='Rehabilitation and Physical Therapy'])[2]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[8]"));
        clickElement(By.xpath("(//input[@aria-label='Office Exams and Telehealth Consult'])[2]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[9]"));
        clickElement(By.xpath("//input[@aria-label='Alternative Care Rider']"));
        clickElement(By.xpath("(//*[text()='Not Included'])[10]"));
        clickElement(By.xpath("(//input[@aria-label='Final Respects'])[2]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[11]"));
        clickElement(By.xpath("(//input[@aria-label='Routine Dental'])[2]"));
        clickElement(By.xpath("(//*[text()='$200'])[1]"));
        clickElement(By.xpath("(//input[@aria-label='Pet Owner Assistance Rider'])[2]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[12]"));
        clickElement(By.xpath("(//input[@aria-label='Inherited and Congenital Care'])[1]"));
        clickElement(By.xpath("(//*[text()='Not Included'])[13]"));
        clickElement(By.xpath("(//input[@aria-label='Benefit Waiting Period: Injuries'])[2]"));
        clickElement(By.xpath("(//*[text()='Waived'])[2]"));
        clickElement(By.xpath("(//input[@aria-label='Benefit Waiting Period: Illness'])[1]"));
        clickElement(By.xpath("(//*[text()='Waived'])[3]"));
        clickElement(By.xpath("//input[@aria-label='Maximum Issue Age of Pet at Effective Date']"));
        clickElement(By.xpath("//*[text()='10 years']"));
        clickElement(By.xpath("(//input[@aria-label='Pre-Existing Condition'])[2]"));
        clickElement(By.xpath("(//*[contains(text(),'6 months look back')])[2]"));
        clickElement(By.xpath("//input[@aria-label='Prior Coverage Credit']"));
        clickElement(By.xpath("(//*[text()='Included'])[1]"));
        sendKeysToElement(By.xpath("//input[@id='weightLimitA_1']"), "20");
        sendKeysToElement(By.xpath("//input[@id='weightLimitB_1']"), "40");
        sendKeysToElement(By.xpath("//input[@id='weightLimitC_1']"), "60");
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void activateGroupStep3() throws InterruptedException {
        waitForPageToLoad();
        Thread.sleep(15000);
        clickElement(By.xpath("(//button[@aria-label='Toggle calendar'])[2]"));
        clickElement(By.xpath("//button[@class='react-calendar__navigation__label']"));
        clickElement(By.xpath("//button[@class='react-calendar__navigation__label']"));
        clickElement(By.xpath("//button[text()='2027']"));
        clickElement(By.xpath("(//abbr[@aria-label='January 2027'])[1]"));
        clickElement(By.xpath("(//abbr[text()='1'])[1]"));
        clickElement(By.xpath("//label[@for='enrollmentFromDate']/..//button[@aria-label='Toggle calendar']"));
        clickElement(By.xpath("(//button[contains(@class,'prev-button')])[2]"));
        clickElement(By.xpath("((//div[contains(@class,'viewContainer')])//div[contains(@class,'month-view__days')]/button[20])[2]"));
        clickElement(By.xpath("//label[@for='enrollmentToDate']/..//button[@aria-label='Toggle calendar']"));
        clickElement(By.xpath("(//button[.//abbr[@aria-label='" + selectDate() + "']])[2]"));
        //clickElement(By.xpath("((//div[contains(@class,'month-view__days')])//button[contains(@class,'tile--now')]/following-sibling::button[1])[1]"));
        sendKeysToElement(By.xpath("//input[@aria-label='Employer Contribution in %']"), "50");
        sendKeysToElement(By.xpath("(//input[contains(@id,'employerContribution')])[2]"), "50");
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void activateGroupStep4() {
        waitForPageToLoad();
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[1]"), "2026");
        sendKeysToElement(By.xpath("//input[@id='totalCommissionPercentage']"), "10");
        clickElement(By.xpath("//label[@for='commissions[0].producerDetail.producerId']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Maxell life']"));
        clickElement(By.xpath("//label[@for='commissions[0].subProducer.subProducerId']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Kiwik life']"));
        sendKeysToElement(By.xpath("//input[@aria-label='Commission in %']"), "10");
        clickElement(By.xpath("//*[text()='Create Commission Group']"));
        clickElement(By.xpath("//div[text()='Next']"));
    }

    private void activateGroupStep5(String newGroupName, String groupType) throws Exception {
        waitForPageToLoad();
        clickElement(By.xpath("//div[@class='sc-bczRLJ cpAnrB']"));
        clickElement(By.xpath("//*[text()='12']"));
        modifyFile("src/test/testData/PDBA_Rating.csv", "PDBA_Rating", List.of("GroupName"), () -> newGroupName);
        uploadToElement(By.xpath("//input[@class='filepond--browser']"),"src/test/testData/PDBA_Rating.csv");
        Thread.sleep(45000);
        clickElement(By.xpath("//div[text()='Next']"));
        Thread.sleep(5000);
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Submit']"));
        clickElement(By.xpath("//div[text()='Confirm Submission']"));
        clickElement(By.xpath("//div[text()='Yes']"));
    }

    private void verifyGroupActivated(String newGroupName) throws Exception {
        waitForPageToLoad();
        clickElement(By.xpath("//button[@aria-label='Done']"));
        clickElement(By.xpath("//a[@aria-label='Groups']"));
        clickElement(By.xpath("//input[@id='groupNumber']"));
        clickElement(By.xpath("//button[contains(@class,'DropdownMenu')]"));
        clickElement(By.xpath("//*[text()='All Groups']"));
        Thread.sleep(5000);
        sendKeysToElement(By.xpath("//input[@id='groupName']"), newGroupName);
        Thread.sleep(3000);
        clickElement(By.xpath("(//a[@aria-label='View'])[1]"));
    }

    public void groupsRenewal(String newGroupName, String groupType) throws Exception {
        clickElement(By.xpath("//a[@aria-label='Groups']"));
        clickElement(By.xpath("//input[@id='groupNumber']"));
        clickElement(By.xpath("//button[contains(@class,'DropdownMenu')]"));
        clickElement(By.xpath("//*[text()='All Groups']"));
        Thread.sleep(5000);
        sendKeysToElement(By.xpath("//input[@id='groupName']"), newGroupName);
        clickElement(By.xpath("(//a[@aria-label='View'])[1]"));
        clickElement(By.xpath("(//button[@title='Actions'])[1]"));
        clickElement(By.xpath("//div[text()='Create Renewal']"));
        clickElement(By.xpath("//div[text()='Yes']"));
        clickElement(By.xpath("//input[@aria-label='Renewal Type']"));
        clickElement(By.xpath("//div[text()='Manual Input']"));
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Next']"));
        Thread.sleep(5000);
        clickElement(By.xpath("(//button[@aria-label='Toggle calendar'])[2]"));
        clickElement(By.xpath("//button[@class='react-calendar__navigation__label']"));
        clickElement(By.xpath("//button[@class='react-calendar__navigation__label']"));
        clickElement(By.xpath("//button[text()='2027']"));
        clickElement(By.xpath("(//abbr[@aria-label='January 2027'])[1]"));
        clickElement(By.xpath("(//abbr[text()='1'])[1]"));
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[3]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[3]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[3]"), "2027");
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[4]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[4]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[4]"), "2027");
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Next']"));
        Thread.sleep(5000);
        clickElement(By.xpath("(//label[@for='enrollmentFromDate']/..//button[@aria-label='Toggle calendar'])[1]"));
        clickElement(By.xpath("(//button[contains(@class,'prev-button')])[1]"));
        clickElement(By.xpath("((//div[contains(@class,'viewContainer')])//div[contains(@class,'month-view__days')]/button[20])[1]"));
        clickElement(By.xpath("//label[@for='enrollmentToDate']/..//button[@aria-label='Toggle calendar']"));
        clickElement(By.xpath("(//button[.//abbr[@aria-label='" + selectDate() + "']])[2]"));
        //clickElement(By.xpath("((//div[contains(@class,'month-view__days')])//button[contains(@class,'tile--now')]/following-sibling::button[1])[1]"));
        clickElement(By.xpath("//div[text()='Next']"));
        Thread.sleep(5000);
        sendKeysToElement(By.xpath("(//input[@aria-label='Month'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Day'])[1]"), "01");
        sendKeysToElement(By.xpath("(//input[@aria-label='Year'])[1]"), "2027");
        sendKeysToElement(By.xpath("//input[@id='totalCommissionPercentage']"), "10");
        clickElement(By.xpath("//label[@for='commissions[0].producerDetail.producerId']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Maxell life']"));
        clickElement(By.xpath("//label[@for='commissions[0].subProducer.subProducerId']/following-sibling::div"));
        clickElement(By.xpath("//*[text()='Kiwik life']"));
        sendKeysToElement(By.xpath("//input[@aria-label='Commission in %']"), "10");
        clickElement(By.xpath("//*[text()='Create Commission Group']"));
        clickElement(By.xpath("//div[text()='Next']"));
        waitForPageToLoad();
        clickElement(By.xpath("//div[@class='sc-bczRLJ cpAnrB']"));
        clickElement(By.xpath("//*[text()='12']"));
        if(groupType.equalsIgnoreCase("Ben Admin Administered")) {
            modifyFile("src/test/testData/PDBA_Rating.csv", "PDBA_Rating", List.of("GroupName"), () -> newGroupName);
            uploadToElement(By.xpath("//input[@class='filepond--browser']"),"src/test/testData/PDBA_Rating.csv");
        }
        if(groupType.equalsIgnoreCase("IAIC Administered")) {
            modifyFile("src/test/testData/ratingTable.csv", "ratingTable", List.of("GroupName"), () -> newGroupName);
            uploadToElement(By.xpath("//input[@class='filepond--browser']"),"src/test/testData/ratingTable.csv");
        }
        Thread.sleep(45000);
        clickElement(By.xpath("//div[text()='Next']"));
        clickElement(By.xpath("//div[text()='Submit']"));
        clickElement(By.xpath("//div[text()='Confirm Submission']"));
        clickElement(By.xpath("//div[text()='Yes']"));
        verifyGroupActivated(newGroupName);
    }

    private void sendKeysToElement(By locator, String keys) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        WebElement element = wait.until(ExpectedConditions.elementToBeClickable(locator));
        element.sendKeys(keys);
    }

    private void uploadToElement(By locator, String path) throws InterruptedException {
        Thread.sleep(5000);
        path = path.replace("\\", File.separator);
        WebElement element = driver.findElement(locator);
        ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
        element.sendKeys(System.getProperty("user.dir") + File.separator + path);
    }

    private void clickElement(By locator) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        WebElement element = wait.until(ExpectedConditions.elementToBeClickable(locator));
        element.click();
    }

    public static String getLatestGroupName() {
        String defaultGroupNamePrefix = "Automation_";
        return defaultGroupNamePrefix + getRandomAlphaNumericString(9);
    }

    private static String getRandomAlphaNumericString(int length) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder randomString = new StringBuilder();
        Random rand = new Random();

        for (int i = 0; i < length; i++) {
            randomString.append(chars.charAt(rand.nextInt(chars.length())));
        }

        return randomString.toString();
    }

    private static void updateGroupName(String fileName, String updatedGroupName) {
        try (FileWriter writer = new FileWriter(fileName)) {
            writer.write(updatedGroupName);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String selectDate(){
        LocalDate today = LocalDate.now();
        LocalDate tomorrow = today.plusDays(1);
        LocalDate resultDate = tomorrow.getMonth() != today.getMonth() ? today : tomorrow;
        String formattedDate = resultDate.format(DateTimeFormatter.ofPattern("MMMM d, yyyy")); 
        return formattedDate;
    }
}
