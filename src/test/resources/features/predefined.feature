#Search engine exercise
#ASK 0323-
#Author Gulnoza

@predefined
Feature: Search Engine scenarios
  @psmoketest

  Scenario: Search Engine for Google
    Given I open url "https://www.google.com/"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@id='APjFqb']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='rso']" to be present
    And I should see page title contains " - Google Search"
    Then element with xpath "//div[@id='rso']" should contain text "Cucumber"



