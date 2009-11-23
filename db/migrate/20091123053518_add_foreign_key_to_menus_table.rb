class AddForeignKeyToMenusTable < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE menus ADD CONSTRAINT fk_menus_restaurants FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) on delete cascade;"
  end

  def self.down
    execute "ALTER TABLE menus DROP FOREIGN KEY fk_menus_restaurants; "
  end
end
