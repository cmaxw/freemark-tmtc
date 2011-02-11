require 'spec_helper'

describe "bookmarks/index.html.erb" do
  before(:each) do
    assign(:bookmarks, [
      stub_model(Bookmark,
        :title => "Title",
        :url => "Url",
        :tags => "Tags",
        :notes => "MyText",
        :user => nil
      ),
      stub_model(Bookmark,
        :title => "Title",
        :url => "Url",
        :tags => "Tags",
        :notes => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
