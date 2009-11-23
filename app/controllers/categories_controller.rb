class CategoriesController < ApplicationController

   layout 'application'

   def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

   def create
    @category=Category.new(params[:category])
    @menu=Menu.find(params[:menu_id])
    @category.menu=@menu
    if @category.save
      redirect_to @menu
    else
      flash[:failure] = "Category was not created, please enter the Category"
      redirect_to @menu
    end
  end

   def edit

    @category = Category.find(params[:id])

  end

  def update

    @category = Category.find(params[:id])

    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category was successfully updated.'
      redirect_to categories_path
    else
      render :action => "edit"
    end

  end

  def destroy

    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_url
  end

end
