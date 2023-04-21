#exercise for Selenium webDriver methods
  @webdriver
  Feature: exercise with Selenium webDriver methods
    @webdriver1
    Scenario: Exercise with Google
      #Given I open url "https://www.google.com/"
      #Then I should see page title as "Google"
      Given GK navigate to "ask-int.portnov.com"
      Then GK get page information
