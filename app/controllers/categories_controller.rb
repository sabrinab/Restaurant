class CategoriesController < ApplicationController
   def create
    @category=Category.new(params[:category])
    @menu=Menu.find(params[:menu_id])
    @category.menu=@menu
    if @category.save
      redirect_to @menu
    else
      flash[:failure] = "Menu was not created, please enter the menu"
      redirect_to @menu
    end
  end
end
