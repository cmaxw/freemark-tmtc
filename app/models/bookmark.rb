# == Schema Information
# Schema version: 20110211040803
#
# Table name: bookmarks
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  url        :string(255)
#  tags       :string(255)
#  notes      :text
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Bookmark < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :title
  validates_presence_of :url, :message => "URL can't be blank"
end
