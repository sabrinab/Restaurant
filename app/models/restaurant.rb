class Restaurant < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name_restaurant, :about
  has_many :menus
end
