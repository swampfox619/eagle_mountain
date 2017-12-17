class AddColumnsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :meta_title, :string
    add_column :posts, :meta_description, :text
    add_column :posts, :permalink, :string
  end
end
