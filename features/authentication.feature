Feature: Authentication

  Scenario: Log in user
    Given I have a user with email address "chuck@teachmetocode.com"
    When I go to the sign in page
    And I fill in "user_email" with "chuck@teachmetocode.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "Welcome chuck@teachmetocode.com"