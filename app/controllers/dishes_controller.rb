class DishesController < ApplicationController
  
   def create
    @dish=Dish.new(params[:dish])
    @category=Category.find(params[:category_id])
    @dish.category=@category
    if @dish.save
      redirect_to @category
    else
      flash[:failure] = "Dish was not created, please enter the Dish"
      redirect_to @category
    end
  end
end
