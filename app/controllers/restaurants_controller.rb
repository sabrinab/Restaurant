class RestaurantsController < ApplicationController
  before_filter :authenticate, :except => ['index','show']
 
  layout 'application'

  def index
    @restaurants = Restaurant.all

    if !params[:search].blank?
      @restaurants = Restaurant.all :conditions => ["name_restaurant LIKE '#{params[:search]}%%'"]
   
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new params[:restaurant]
    @restaurant.user=current_user 
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
    if current_user == @restaurant.user
      if @restaurant.update_attributes(params[:restaurant])
        flash[:notice] = 'Restaurant was successfully updated.'
        redirect_to restaurants_path
      else
        render :action => "edit"
      end
    end
  end

  def destroy
    
    @restaurant = Restaurant.find(params[:id])
    if current_user == @restaurant.user
      @restaurant.destroy
      redirect_to restaurants_url
    end
  end
end
