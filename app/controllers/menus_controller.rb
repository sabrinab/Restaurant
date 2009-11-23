class MenusController < ApplicationController
  before_filter :authenticate, :except => ['index','show']
  layout 'application'
  
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

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
  def edit

    @menu = Menu.find(params[:id])

  end

  def update

    @menu = Menu.find(params[:id])
    
      if @menu.update_attributes(params[:menu])
        flash[:notice] = 'Menu was successfully updated.'
        redirect_to menus_path
      else
        render :action => "edit"
      end
    
  end

  def destroy

    @menu = Menu.find(params[:id])
    
      @menu.destroy
      redirect_to menus_url
    
  end
end



