class RestaurantsController < ApplicationController
  before_filter :authenticate, :except => ['index','show']
 
#  layout 'layout'

 def index
    @restaurants = Restaurant.all
  end

  def show
     @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new params[:restaurant]
    if @restaurant.save
      flash[:success] = "Restaurant created"
      redirect_to restaurants_path
    else
      flash[:failure] = "Restaurant was not created"
      render :action => "new"
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
     @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(params[:restaurant])
        flash[:notice] = 'Restaurant was successfully updated.'
        redirect_to restaurants_path
      else
        render :action => "edit"

      end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url
  end
end
