package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class webDriverStepDefs {
    @Given("GK navigate to {string}")
    public void gkNavigateTo(String sUrl) {
        getDriver().get("https://Google.com/");

        switch (sUrl){
            case "Google":
                getDriver().get("https://Google.com/");
                break;
            case "Portnov":
                getDriver().get("https://portnov.com/");
                break;
            case "ask-int":
                getDriver().get("http://ask-int.portnov.com/");
                break;
            default:
                System.out.println("No URL found");
        }


    }

    @Then("GK get page information")
    public void gkGetPageInformation() {
        System.out.println("The page title is "+getDriver().getTitle());
        System.out.println("The page url is "+getDriver().getCurrentUrl());
        System.out.println("The window handle is "+getDriver().getWindowHandle());

    }

    @And("GK maximize the window")
    public void gkMaximizeTheWindow() {
        getDriver().manage().window().maximize();
    }
}
