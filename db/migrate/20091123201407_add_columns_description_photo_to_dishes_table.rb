class AddColumnsDescriptionPhotoToDishesTable < ActiveRecord::Migration
  def self.up
    add_column :dishes, :photo_file_name, :string
    add_column :dishes, :photo_content_type, :string
    add_column :dishes, :photo_file_size, :integer

  end

  def self.down
    remove_column :dishes, :photo_file_name
    remove_column :dishes, :photo_content_type
    remove_column :dishes, :photo_file_size
  end
end
