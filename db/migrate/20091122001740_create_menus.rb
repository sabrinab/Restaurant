class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.integer :restaurant_id
      t.text :about

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
