Given /^I have a user with email address "([^"]*)"$/ do |email|
  Factory.create(:user, :email => email)
end

Given /^I am logged in$/ do
  Given "I have a user with email address \"chuck@teachmetocode.com\""
  When "I go to the sign in page"
  And "I fill in \"user_email\" with \"chuck@teachmetocode.com\""
  And "I fill in \"user_password\" with \"password\""
  And "I press \"Sign in\""
end