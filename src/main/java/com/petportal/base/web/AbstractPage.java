package com.petportal.base.web;

import java.util.List;
import java.util.Map;
import org.openqa.selenium.WebElement;

public interface AbstractPage {

    Map<String, WebElement> elements();

    Map<String, List<WebElement>> elementsGroup();

    String name();
}
