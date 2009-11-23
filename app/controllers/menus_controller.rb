class MenusController < ApplicationController
 
  def create
    @menu=Menu.new(params[:menu])
    @restaurant=Restaurant.find(params[:restaurant_id])
    @menu.restaurant=@restaurant
     if @menu.save
      redirect_to @restaurant
    else
      flash[:failure] = "Menu was not created, please enter the menu"
      redirect_to @restaurant
    end
  end
end

