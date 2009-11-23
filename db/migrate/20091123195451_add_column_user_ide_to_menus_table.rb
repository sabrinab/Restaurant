class AddColumnUserIdeToMenusTable < ActiveRecord::Migration
  def self.up
     add_column :menus, :user_id, :integer
  end

  def self.down
     remove column :menus, :user_id
  end
end
