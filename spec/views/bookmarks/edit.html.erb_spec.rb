require 'spec_helper'

describe "bookmarks/edit.html.erb" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :title => "MyString",
      :url => "MyString",
      :tags => "MyString",
      :notes => "MyText",
      :user => nil
    ))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookmark_path(@bookmark), :method => "post" do
      assert_select "input#bookmark_title", :name => "bookmark[title]"
      assert_select "input#bookmark_url", :name => "bookmark[url]"
      assert_select "input#bookmark_tags", :name => "bookmark[tags]"
      assert_select "textarea#bookmark_notes", :name => "bookmark[notes]"
      assert_select "input#bookmark_user", :name => "bookmark[user]"
    end
  end
end
