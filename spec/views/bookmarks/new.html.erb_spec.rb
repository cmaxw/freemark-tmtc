require 'spec_helper'

describe "bookmarks/new.html.erb" do
  before(:each) do
    assign(:bookmark, stub_model(Bookmark,
      :title => "MyString",
      :url => "MyString",
      :tags => "MyString",
      :notes => "MyText",
      :user => nil
    ).as_new_record)
  end

  it "renders new bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookmarks_path, :method => "post" do
      assert_select "input#bookmark_title", :name => "bookmark[title]"
      assert_select "input#bookmark_url", :name => "bookmark[url]"
      assert_select "input#bookmark_tags", :name => "bookmark[tags]"
      assert_select "textarea#bookmark_notes", :name => "bookmark[notes]"
      assert_select "input#bookmark_user", :name => "bookmark[user]"
    end
  end
end
