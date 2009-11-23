class AddForeignKeyToDishesTable < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE dishes ADD CONSTRAINT fk_dishes_categories FOREIGN KEY (category_id) REFERENCES categories(id) on delete cascade;"
  end

  def self.down
    execute "ALTER TABLE dishes DROP FOREIGN KEY fk_dishes_categories; "
  end
end
