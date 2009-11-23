class AddForeignKeyToCategoriesTable < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE categories ADD CONSTRAINT fk_categories_menus FOREIGN KEY (menu_id) REFERENCES menus(id) on delete cascade;"
  end

  def self.down
    execute "ALTER TABLE categories DROP FOREIGN KEY fk_categories_menus; "
  end
end
