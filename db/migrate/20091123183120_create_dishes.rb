class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
