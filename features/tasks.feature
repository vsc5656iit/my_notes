Feature: Notes
  In order to be exclusive
  As a organized person
  I dont want other people to visit my notes

  @javascript
  Scenario: User creates a note and logout and a new user logs in 
    Given I am logged in
    And I am in home page
    Then I should see "My Notes"
    When I enter "Remember Milk" in note input
    And I press "Add Note"
    Then I should see "Remember Milk" in notes list
    When I press "Logout"
    Then I should not see "Logged in as"
    And I should see "Login" within "header"  
    Given that a user with email "user-2@example.com" and password "rahasyam" exist
    And I am in home page
    When I press "Login" in "header"
    And I fill in "user[email]" with "user-2@example.com"
    And I fill in "user[password]" with "rahasyam"
    And I press "Login" in "form"
    And I should see "Logged in as user-2@example.com"
    And I should not see "Remember Milk"