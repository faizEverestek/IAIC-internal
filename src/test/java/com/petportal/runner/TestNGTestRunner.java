package com.petportal.runner;

import io.cucumber.testng.*;

@CucumberOptions(features = { "src/test/features" }, glue = {
		"com/petportal/base/web/steps"}, plugin = { "pretty", "json:target/cucumber-report/cucumberTestReport.json",
				"html:target/cucumber-report/cucumberTestReport.html" })

public class TestNGTestRunner extends AbstractTestNGCucumberTests {
//	@Override
//	@DataProvider(parallel = true)
//	public Object[][] scenarios() {
//		return super.scenarios();
//	}
}