require 'spec_helper'

describe "Sign Out link" do
  it "should sign you out when clicked" do
    login_user
    page.should have_content("Welcome")

    click_link "Sign Out"
    page.should have_content("Sign In")
    page.should_not have_content("Welcome")
  end
end
