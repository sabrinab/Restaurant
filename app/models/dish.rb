class Dish < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :name , :description , :price
  #Paperclip
  has_attached_file :photo,
    :styles => {
    :thumb=> "100x100#",
    :small => "150x150>"}
end
