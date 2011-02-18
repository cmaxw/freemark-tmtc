Given /^I have a bookmark with title "([^"]*)" and URL "([^"]*)"$/ do |title, url|
  Bookmark.create(:title => title, :url => url, :user => User.find_by_email("chuck@teachmetocode.com"))
end

When /^I edit the bookmark "([^"]*)"$/ do |title|
  bookmark = Bookmark.find_by_title(title)
  visit edit_bookmark_path(bookmark)
end

Given /^I have a user with email "([^"]*)"$/ do |email|
  Factory.create(:user, :email => email)
end

Given /^"([^"]*)" has a bookmark with title "([^"]*)" and URL "([^"]*)"$/ do |email, title, url|
  user = User.find_by_email(email)
  user.bookmarks.create(:title => title, :url => url)
end

