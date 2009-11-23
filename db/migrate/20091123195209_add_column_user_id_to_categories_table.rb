class AddColumnUserIdToCategoriesTable < ActiveRecord::Migration
  def self.up
    add_column :categories, :user_id, :integer
  end

  def self.down
    remove column :categories, :user_id
  end
end
