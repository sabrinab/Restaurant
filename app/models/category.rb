class Category < ActiveRecord::Base
   belongs_to :menu
   validates_presence_of :name
   has_many :dishes
end
