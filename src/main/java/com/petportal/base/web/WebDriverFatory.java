package com.petportal.base.web;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.function.Function;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.safari.SafariDriver;
import org.openqa.selenium.safari.SafariOptions;

import io.github.bonigarcia.wdm.WebDriverManager;

/**
 * This class provides a factory to create web driver on the basis of browser
 * type.
 */
public class WebDriverFatory {

	private static final String REMOTE_ALLOW_ORIGINS = "--remote-allow-origins=*";
	private static final String NODE_URL = "node-url";
	private static final String HEADLESS = "headless";
	private static final String HEADLESS_ARGUMENTS = "--headless";
	private static final String ZOOM_LEVEL = "force-device-scale-factor=0.50";

	private WebDriverFatory() {
		// private constructor
	}

	/**
	 * Map of browser type and respective factory methods of web drivers.
	 */
	private static final Map<BrowserType, Function<Properties, WebDriver>> AVAILABLE_DRIVERS = new HashMap<>();

	static {
		AVAILABLE_DRIVERS.put(BrowserType.CHROME, properties -> {
			ChromeOptions options = new ChromeOptions();
			options.addArguments(REMOTE_ALLOW_ORIGINS);
			options.addArguments(ZOOM_LEVEL);
			if ("true".equals(properties.getProperty(HEADLESS))) {
				options.addArguments(HEADLESS_ARGUMENTS);
			}
			return new ChromeDriver(options);
		});
		AVAILABLE_DRIVERS.put(BrowserType.EDGE, properties -> {
			EdgeOptions options = new EdgeOptions();
			options.addArguments(REMOTE_ALLOW_ORIGINS);
			options.addArguments(ZOOM_LEVEL);
			if ("true".equals(properties.getProperty(HEADLESS))) {
				options.addArguments(HEADLESS_ARGUMENTS);
			} 
			WebDriverManager.edgedriver().setup();
			return new EdgeDriver(options);
		});
		AVAILABLE_DRIVERS.put(BrowserType.FIREFOX, properties -> {
			FirefoxOptions options = new FirefoxOptions();
			options.addArguments("--acceptInsecureCerts");
			options.addArguments(ZOOM_LEVEL);
			if ("true".equals(properties.getProperty(HEADLESS))) {
				options.addArguments(HEADLESS_ARGUMENTS);
			} 
			WebDriverManager.firefoxdriver().setup();
			return new FirefoxDriver(options);
		});
		AVAILABLE_DRIVERS.put(BrowserType.SAFARI, properties -> {
			SafariOptions options = new SafariOptions();
			return new SafariDriver(options);
		});

		AVAILABLE_DRIVERS.put(BrowserType.REMOTE_CHROME, properties -> {
			DesiredCapabilities cap = new DesiredCapabilities();
			cap.setBrowserName("chrome");
			cap.setPlatform(Platform.getCurrent());
			FirefoxOptions options = new FirefoxOptions();
			if ("true".equals(properties.getProperty(HEADLESS))) {
				options.addArguments(HEADLESS_ARGUMENTS);
			}
			options.merge(cap);
			try {
				return new RemoteWebDriver(new URL(properties.getProperty(NODE_URL)), options);
			} catch (MalformedURLException e) {

				throw new IllegalArgumentException();
			}
		});

		AVAILABLE_DRIVERS.put(BrowserType.REMOTE_FIREFOX, properties -> {
			DesiredCapabilities cap = new DesiredCapabilities();
			cap.setBrowserName("firefox");
			cap.setPlatform(Platform.getCurrent());
			cap.setCapability("marionatte", false);

			FirefoxOptions options = new FirefoxOptions();
			if ("true".equals(properties.getProperty(HEADLESS))) {
				options.addArguments(HEADLESS_ARGUMENTS);
			}
			options.merge(cap);
			System.setProperty("webdriver.gecko.driver", properties.getProperty("gekodriver-path"));
			try {
				return new RemoteWebDriver(new URL(properties.getProperty(NODE_URL)), options);
			} catch (MalformedURLException e) {

				throw new IllegalArgumentException();
			}
		});

		AVAILABLE_DRIVERS.put(BrowserType.REMOTE_EDGE, properties -> {
			DesiredCapabilities cap = new DesiredCapabilities();
			cap.setBrowserName("edge");
			cap.setPlatform(Platform.getCurrent());
			EdgeOptions options = new EdgeOptions();
			if ("true".equals(properties.getProperty(HEADLESS))) {
				options.addArguments(HEADLESS_ARGUMENTS);
			}
			options.addArguments(REMOTE_ALLOW_ORIGINS);
			options.merge(cap);
			WebDriverManager.edgedriver().setup();
			try {
				return new RemoteWebDriver(new URL(properties.getProperty(NODE_URL)), options);
			} catch (MalformedURLException e) {
				e.printStackTrace();
				throw new IllegalArgumentException();
			}
		});
	}

	/**
	 *
	 * @param type
	 * @param properties
	 * @return
	 */

	public static WebDriver createWebDriver(BrowserType type, Properties properties) {
		Function<Properties, WebDriver> supplier = AVAILABLE_DRIVERS.get(type);
		if (supplier != null) {
			return supplier.apply(properties);
		}
		throw new IllegalArgumentException(String.format("Browser type '%s' is not supported", type));
	}
}
