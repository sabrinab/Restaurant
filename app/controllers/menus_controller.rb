class MenusController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = @restaurant.menus.create!(params[:menu])
    redirect_to @restaurant  
  end
end
