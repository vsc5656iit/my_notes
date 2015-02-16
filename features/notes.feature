Feature: Notes
  In order remeber things
  As a organized person
  I want to save notes

  @javascript
  Scenario: Add a Note
    Given I am logged in
    And I am in home page
    Then I should see "My Notes"
    When I enter "Remember Milk" in note input
    And I press "Add Note"
    Then I should see "Remember Milk" in notes list
    When I go to home page
    Then I should see "Remember Milk"
    And I should not see "Plan for the date"
    When I enter "Plan for the date" in note input
    And I press "Add Note"
    Then I should see "Plan for the date" in notes list
