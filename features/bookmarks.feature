Feature: Bookmarks

  Scenario: Not logged in
    When I go to the new bookmarks page
    Then I should see "Sign In"
    And I should see "Email"
    And I should see "Password"
    
  Scenario: Logged in
    Given I am logged in
    When I go to the new bookmarks page
    Then I should see "Title"
    And I should see "URL"
    And I should see "Tags"
    And I should see "Notes"