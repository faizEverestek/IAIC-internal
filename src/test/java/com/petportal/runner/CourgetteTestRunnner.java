package com.petportal.runner;

import org.testng.annotations.Test;
import courgette.api.CourgetteOptions;
import courgette.api.CourgettePlugin;
import courgette.api.CucumberOptions;
import courgette.api.testng.TestNGCourgette;
import courgette.api.CourgetteRunLevel;
import courgette.api.CourgetteTestOutput;
/**
 * This is the test runner class which executes the scenario in the parallel mode
 */
@Test
@CourgetteOptions(
		threads = 1,
		runLevel = CourgetteRunLevel.SCENARIO,
		rerunFailedScenarios = true,
		rerunAttempts = 4,
		testOutput = CourgetteTestOutput.CONSOLE,
		reportTitle = "IAIC Automation Test Report",
		reportTargetDir = "build",
		environmentInfo = "browser=chrome; git_branch=master",
		plugin = CourgettePlugin.EXTENT_REPORTS,
		cucumberOptions = @CucumberOptions(
				features = "src/test/features",
				glue = "com/petportal/base/web/steps",
				tags= "@Regression",
				publish = true,
				plugin = {
						"pretty",
						"json:build/cucumber-report/cucumber.json",
				        "html:build/cucumber-report/cucumber.html" }
				))
public class CourgetteTestRunnner extends TestNGCourgette {
}