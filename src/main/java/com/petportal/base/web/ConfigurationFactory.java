package com.petportal.base.web;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.EnumMap;
import java.util.Map;
import java.util.Properties;
import java.util.function.Supplier;

public class ConfigurationFactory {
	private static final String USER_DIR = "user.dir";

	private ConfigurationFactory() {
		// constructor
	}
	private static final Map<EnvironmentType, Supplier<Properties>> AVAILABLE_CONFIGURATIONS = new EnumMap<>(EnvironmentType.class);
	static {
		AVAILABLE_CONFIGURATIONS.put(EnvironmentType.QA2, () -> {
			 String path = System.getProperty(USER_DIR) + "//src//test//resources//config_qa2.properties";
			 return loadProperties(path);
		});
		AVAILABLE_CONFIGURATIONS.put(EnvironmentType.QA, () -> {
			 String path = System.getProperty(USER_DIR) + "//src//test//resources//config_qa.properties";
			 return loadProperties(path);
		});
		AVAILABLE_CONFIGURATIONS.put(EnvironmentType.DEV, () -> {
			String path = System.getProperty(USER_DIR) + "//src//test//resources//config_dev3.properties";
			return loadProperties(path);
		});
	}

	public static Properties createProperties(EnvironmentType type) {
		Supplier<Properties> supplier = AVAILABLE_CONFIGURATIONS.get(type);
		if (supplier != null) {
			return supplier.get();
		}
		throw new IllegalArgumentException(String.format("Environment type '%s' is not supported", type));
	}

	private static Properties loadProperties(String path) {
		try (FileInputStream file = new FileInputStream(path)) {
			Properties props = new Properties();
			props.load(file);
			return props;
		} catch (FileNotFoundException e) {
			throw new IllegalArgumentException("The file '" + path + "' does not exist.");
		} catch (IOException e) {
			throw new IllegalArgumentException("The file '" + path + "' is not a valid properties file.");
		}
	}
}
