class Menu < ActiveRecord::Base
  belongs_to :restaurant
  validates_presence_of :about
end
