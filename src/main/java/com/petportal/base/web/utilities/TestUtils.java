package com.petportal.base.web.utilities;

import java.security.SecureRandom;
import java.time.Duration;
import java.util.Random;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class TestUtils {

    /**
     * The web driver.
     */
    private WebDriver driver;

    /**
     * The web driver wait.
     */
    private WebDriverWait wait;

    private static final String CHARACTERS = "abcdefghijklmnopqrstuvwxyz";
    private static final SecureRandom RANDOM = new SecureRandom();

    /**
     * Constructor.
     *
     * @param driver Web Driver.
     */
    public TestUtils(WebDriver driver) {
        this.driver = driver;
        wait = new WebDriverWait(driver, Duration.ofSeconds(20));
    }

    /**
     * This method used to wait until element to be clickable.
     *
     * @param element Web Element
     */
    public void waitUntilElementToBeClickable(WebElement element) {
        wait.until(ExpectedConditions.elementToBeClickable(element));
    }

    /**
     * This method used to wait until element to be visible.
     *
     * @param element Web Element
     */
    public void waitUntilElementToBeVisible(WebElement element) {
        wait.until(ExpectedConditions.visibilityOf(element));
    }

    /**
     * This method used to scroll up to element display.
     *
     * @param element Web Element
     */
    public void scrollUptoElementDisplay(WebElement element) {
        ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
    }

    /**
     * This method used to wait until element to be invisible.
     */
    public void waitForElementToBeInvisible(WebElement element) {
        wait.until(ExpectedConditions.invisibilityOf(element));
    }

    public static String generateRandomInteger(int length) {
        StringBuilder result = new StringBuilder();
        String characters = "1234567890";
        int charactersLength = characters.length();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            result.append(characters.charAt(random.nextInt(charactersLength)));
        }
        return result.toString();
    }

    public static String generateRandomString(int length) {
        // Ensure the length is non-negative
        if (length < 0) {
            throw new IllegalArgumentException("Length must be non-negative");
        }

        StringBuilder result = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int index = RANDOM.nextInt(CHARACTERS.length());
            result.append(CHARACTERS.charAt(index));
        }
        return result.toString();
    }
}
