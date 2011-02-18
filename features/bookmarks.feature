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

  Scenario: Creating a Bookmark
    Given I am logged in
    When I go to the new bookmarks page
    And I fill in "bookmark[title]" with "Google"
    And I fill in "bookmark[url]" with "http://google.com"
    And I fill in "bookmark[tags]" with "search engine"
    And I fill in "bookmark[notes]" with "Well, it's google! It's a verb now!"
    And I press "Create Bookmark"
    Then I should see "Google"
    And I should see "http://google.com"
        
  Scenario: Creating an Invalid Bookmark
    Given I am logged in
    When I go to the new bookmarks page
    And I press "Create Bookmark"
    Then I should see "Title can't be blank"
    And I should see "URL can't be blank"    

  Scenario: Updating a Bookmark
    Given I am logged in
    And I have a bookmark with title "Google" and URL "http://google.com"
    When I edit the bookmark "Google"
    And I fill in "bookmark[title]" with "Yahoo!"
    And I fill in "bookmark[url]" with "http://yahoo.com"
    And I fill in "bookmark[tags]" with "search engine"
    And I fill in "bookmark[notes]" with "Yahoo! is not a verb!"
    And I press "Update Bookmark"
    Then I should see "Yahoo!"
    And I should see "http://yahoo.com"

  Scenario: Updating an Invalid Bookmark
    Given I am logged in
    And I have a bookmark with title "Google" and URL "http://google.com"
    When I edit the bookmark "Google"
    And I fill in "bookmark[title]" with ""
    And I fill in "bookmark[url]" with ""
    And I press "Update Bookmark"
    Then I should see "Title can't be blank"
    And I should see "URL can't be blank"
    
  Scenario: Listing my Bookmarks
    Given I am logged in
    And I have a bookmark with title "Google" and URL "http://google.com"
    And I have a user with email "joe@example.com"
    And "joe@example.com" has a bookmark with title "Yahoo!" and URL "http://yahoo.com"
    When I go to the bookmarks list
    Then I should see "Google"
    And I should not see "Yahoo!"