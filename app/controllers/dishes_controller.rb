class DishesController < ApplicationController

  layout 'application'

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

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
  def edit

    @dish = Dish.find(params[:id])

  end

  def update

    @dish = Dish.find(params[:id])
    
      if @dish.update_attributes(params[:dish])
        flash[:notice] = 'Dish was successfully updated.'
        redirect_to dishes_path
      else
        render :action => "edit"
      end
    
  end

  def destroy

    @dish = Dish.find(params[:id])
    
      @dish.destroy
      redirect_to dishes_url
    end
  
end
