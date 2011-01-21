Given /^I have a user with email address "([^"]*)"$/ do |email|
  Factory.create(:user, :email => email)
end
