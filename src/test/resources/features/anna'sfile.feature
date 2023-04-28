#ASK test scenarios

@asktest
Feature: ASK test scenarios

  @asktest1
  Scenario: ASK scenario 1
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "annapcsteacher2@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(),'TEACHER')]" should be present
    Then I click on element with xpath " //h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
     #Then I wait for 3 sec
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "03 Anna V Quiz name" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 1 sec
    And I click on element with xpath "//mat-radio-button[2]"
      #And I click on element with xpath "//div[contains(text(),'Single-Choice')]"
    And I wait for 1 sec
    Then I type "Single question name for quiz" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 3 sec
    Then element with xpath "//mat-panel-title[contains(text(),'01 Anna V Quiz name')]" should contain text "01 Anna V Quiz name"
    And I wait for 5 sec

      #delete the quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(),'03 Anna V Quiz name')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'03 Anna V Quiz name')]/../../..//button[@class='mat-raised-button mat-warn']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"
      #Then I click on element with xpath "//div[@class='mat-dialog-actions']//button[@class='mat-raised-button mat-warn']"

    And I wait for 3 sec
    Then element with xpath "//mat-panel-title[contains(text(),'02 Anna V Quiz name')]" should not be present

  @asktest2
  Scenario Outline: Student registration
    Given I open url "http://ask-int.portnov.com/#/registration"
    And I type "<sFirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "<sLastName>" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "<sEmail>" into element with xpath "//input[@formcontrolname='email']"
    And I type "<sGroup>" into element with xpath "//input[@formcontrolname='group']"
    And I type "<sPassword>" into element with xpath "//input[@formcontrolname='password']"
    And I type "<sConfirmPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then AV retrieve activation information for email <sEmailAddress>
    And AV activate the user
    Examples:
      | sFirstName  | sLastName |  sEmail |  sGroup | sPassword | sConfirmPassword | sEmailAddress |
      | James | Bond  | jamesbond2@abc.com | 123   | 12345ABc | 12345ABc  | "jamesbond2@abc.com" |
      | James | Bond  | jamesbond5@abc.com | 123   | 12345ABc | 12345ABc  | "jamesbond5@abc.com" |

  @asktest3
  Scenario Outline: Student registration
    Given AV open "ASK Registration"
    And AV type "<sFirstName>" into element with xpath "FirstName"
    And AV type "<sLastName>" into element with xpath "LastName"
    And I type "<sEmail>" into element with xpath "//input[@formcontrolname='email']"
    And I type "<sGroup>" into element with xpath "//input[@formcontrolname='group']"
    And I type "<sPassword>" into element with xpath "//input[@formcontrolname='password']"
    And I type "<sConfirmPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then AV retrieve activation information for email <sEmailAddress>
    And AV activate the user
    Examples:
      | sFirstName  | sLastName |  sEmail |  sGroup | sPassword | sConfirmPassword | sEmailAddress |
      | James | Bond  | jamesbond2@abc.com | 123   | 12345ABc | 12345ABc  | "jamesbond2@abc.com" |
      | James | Bond  | jamesbond5@abc.com | 123   | 12345ABc | 12345ABc  | "jamesbond5@abc.com" |
