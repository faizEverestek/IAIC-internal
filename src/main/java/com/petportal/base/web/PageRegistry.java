package com.petportal.base.web;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.openqa.selenium.WebDriver;

public class PageRegistry {
	private PageRegistry() {
		// private constructor
	}

	private static final Map<String, AbstractPage> REGISTERED_PAGES = new HashMap<>();

	public static void init(WebDriver driver, String[] packages) {
		try {
			for (String packageName : packages) {
				for (Class<?> klass : getClasses(packageName)) {
					Set<Class<?>> interfaces = new HashSet<>();
					interfaces.addAll(Arrays.asList(klass.getInterfaces()));
					if (interfaces.contains(AbstractPage.class)) {
						Class<? extends AbstractPage> pageClass = klass.asSubclass(AbstractPage.class);
						Class<?>[] type = { WebDriver.class };
						Constructor<? extends AbstractPage> cons = pageClass.getConstructor(type);
						AbstractPage page = cons.newInstance(driver);
						REGISTERED_PAGES.put(page.name(), page);
					}
				}
			}
		} catch (Exception e) {
			throw new IllegalStateException(e);
		}
	}

	public static AbstractPage getPageByName(String pageName) {
		return REGISTERED_PAGES.get(pageName);
	}

	private static List<Class<?>> getClasses(String packageName) throws ClassNotFoundException, IOException {
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		assert classLoader != null;
		String path = packageName.replace('.', '/');
		Enumeration<URL> resources = classLoader.getResources(path);
		List<File> dirs = new ArrayList<>();
		while (resources.hasMoreElements()) {
			URL resource = resources.nextElement();
			dirs.add(new File(resource.getFile()));
		}
		ArrayList<Class<?>> classes = new ArrayList<>();
		for (File directory : dirs) {
			classes.addAll(findClasses(directory, packageName));
		}
		return classes;
	}

	/**
	 * Recursive method used to find all classes in a given directory and subdirs.
	 *
	 * @param directory   The base directory
	 * @param packageName The package name for classes found inside the base
	 *                    directory
	 * @return The classes
	 * @throws ClassNotFoundException
	 */
	private static List<Class<?>> findClasses(File directory, String packageName) throws ClassNotFoundException {
		List<Class<?>> classes = new ArrayList<>();
		if (!directory.exists()) {
			return classes;
		}
		File[] files = directory.listFiles();
		for (File file : files) {
			if (file.isDirectory()) {
				assert !file.getName().contains(".");
				classes.addAll(findClasses(file, packageName + "." + file.getName()));
			} else if (file.getName().endsWith(".class")) {
				Class<?> kclass = Class
						.forName(packageName + '.' + file.getName().substring(0, file.getName().length() - 6));
				if (null != kclass.getAnnotation(WebPage.class)) {
					classes.add(kclass);

				}
			}
		}
		return classes;
	}

}
