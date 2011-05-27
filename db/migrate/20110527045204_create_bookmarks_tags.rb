class CreateBookmarksTags < ActiveRecord::Migration
  def self.up
    create_table :bookmarks_tags, :id => false do |t|
      t.integer :bookmark_id
      t.integer :tag_id
    end

    add_index :bookmarks_tags, :bookmark_id
    add_index :bookmarks_tags, :tag_id

    remove_column :bookmarks, :tags
  end

  def self.down
    add_column :bookmarks, :tags, :string

    drop_table :bookmarks_tags
  end
end
