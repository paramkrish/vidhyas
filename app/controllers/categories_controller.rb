class CategoriesController < ApplicationController

  def edit
      @recipes = Recipe.all
      @category = Category.find(params[:id])

  end

  def show
    @recipes = Recipe.all  
    @category_id = params[:id].split('-').first or not_found
    @category = Category.find(@category_id) or not_found    
  end

  def update
    @recipes = Recipe.all  
    @category = Category.find(params[:id])
    if @category.update_attributes(task_params)
      flash[:success] = "Category <strong>'#{@category.name}'</strong> is Updated."
      redirect_to category_path
    else
      render "edit"
    end
  end


  def index
    @recipes = Recipe.all            
    @categories = Category.all            
  end

  def new
    @recipes = Recipe.all
    @category = Category.new


  end

  def delete
  end

  def task_params
      params.require(:category).permit(:name)
  end


  def create
    @recipes = Recipe.all  
    @category = Category.new(task_params)

    if @category.save      
            redirect_to categories_index_path
    else
            render "new"
    end

  end
end
