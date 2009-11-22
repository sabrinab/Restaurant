class Restaurant < ActiveRecord::Base
  validates_presence_of :name_restaurant, :about
  has_many :menus
end
