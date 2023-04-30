# Author Gulnoza Kasimova
#Test automation for different Search engines

@predefined
Feature: Search Engine scenarios
  @predefined2 @Regression @smoke

 Scenario: Search Engine for gibiru.com/
    
   Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    And element with xpath "//input[@id='q']" should be present
    When I type "apple" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@id='button-addon2']"
    Then element with xpath "//div[@class='starter-template']" should be present
    And element with xpath "//div[@class='starter-template']" should contain text "apple"
    And I wait for 2 sec

  @predefined3
  Scenario: Search Engine for duckduckgo.com

    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    And element with xpath "//input[@id='searchbox_input']" should be present
    When I type "seafood" into element with xpath "//input[@id='searchbox_input']"
    And I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//div[@id='links_wrapper']" should be present
    And element with xpath "//div[@id='links_wrapper']" should contain text "seafood"
    And I wait for 2 sec

  @predefined4
  Scenario: Search Engine for swisscows.com

    Given I open url " https://swisscows.com"
    Then I should see page title contains " search engine Swisscows"
    And element with xpath "//input[@class='input-search']" should be present
    And I type "Mozarella" into element with xpath "//input[@class='input-search']"
    And I click on element with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//section[@class='page-results']" to be present
    And element with xpath "//a[@class='active' and @href='/en/web?query=Mozarella']" should be present
    And I wait for 2 sec

  @predefined5
  Scenario: Search Engine for searchencrypt.com

    Given I open url "https://www.searchencrypt.com"
    Then I should see page title contains "Search Encrypt | Home"
    And element with xpath "//input[@name='q']" should be present
    And I type "Lemon" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@class='search-bar__submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    And element with xpath "//section[@class='serp__results container']" should contain text "Lemon"
    And I wait for 2 sec

  @predefined6
  Scenario: Search Engine for startpage.com
    Given I open url "https://www.startpage.com"
    And element with xpath "//input[@id='q']" should be present
    And I type "Vine" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@id='search-btn']"
    Then I wait for element with xpath "//div[@id='main']" to be present
    And element with xpath "//div[@id='main']" should contain text "Vine"
    And I wait for 2 sec

  @predefined7
  Scenario: Search Engine for www.yandex.com

    Given I open url "https://www.yandex.com"
    Then I should see page title as "Yandex"
    And element with xpath "//input[@id='text']" should be present
    And I type "Basil" into element with xpath "//input[@id='text']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='content i-bem']" to be present
    And element with xpath "//div[@class='content i-bem']" should contain text "Basil"
    And I wait for 2 sec

  @predefined8
  Scenario: Search Engine for ecosia.org

    Given I open url " https://www.ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    And element with xpath "//input[@name='q']" should be present
    And I type "Cone pine" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@aria-label='Submit']"
    Then I wait for element with xpath "//section[@class='mainline web__mainline']" to be present
    And element with xpath "//section[@class='mainline web__mainline']" should contain text "Cone-pine"
    And I wait for 2 sec

  @predefined9
  Scenario: Search Engine for wiki.com/

    Given I open url " https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    And element with xpath "//input[@name='q']" should be present
    And I type "flower" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//input[@name='btnG']"
    Then I switch to new window
    And I should see page title as "Form is not secure"
    And I click on element using JavaScript with xpath "//button[@id='proceed-button']"
    Then I switch to iframe with xpath "//body/div[@id='results_009420061493499222400:e8sof1xaq-u']/iframe[1]"
    Then element with xpath "//*[contains(text(),'flower')]" should contain text "flower"
    And I wait for 2 sec

  @predefined10
  Scenario: Search Engine for givewater.com

    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    And element with xpath "//input[@id='site-search']" should be present
    And I type "water" into element with xpath "//input[@id='site-search']"
    And I click on element using JavaScript with xpath "//button[@class='btn-search']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    And element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "water"
    And I wait for 2 sec

  @predefined11
  Scenario: Search Engine for  ekoru.org

    Given I open url " https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    And element with xpath "//input[@id='fld_q']" should be present
    And I type "air" into element with xpath "//input[@id='fld_q']"
    And I click on element using JavaScript with xpath "//button[@onclick='search()']"
    Then I wait for element with xpath "//div[@class='serp-wrapper']" to be present
    And I wait for 2 sec
    Then element with xpath "//div[@class='serp-wrapper']" should contain text "air"
    And I wait for 2 sec