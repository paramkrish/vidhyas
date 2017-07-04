class RecipesController < ApplicationController
  def index
      @recipes = Recipe.all
  end

  def edit
        @recipes = Recipe.all

      @recipe = Recipe.find(params[:id])
  end

  def new
    @recipes = Recipe.all
    @recipe = Recipe.new

  end


  def destroy
  end

  def create
    @recipe = Recipe.new(task_params)
    @recipes = Recipe.all

    if @recipe.save      
            redirect_to recipes_index_path
    else
            render "new"
    end

  end
  

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(task_params)
      flash[:success] = "Recipe <strong>'#{@recipe.item}'</strong> is Updated."
      redirect_to recipe_path
    else
      render "edit"
    end
  end


  def task_params
      params.require(:recipe).permit(:item,:ingredients,:procedure,:category_id)
  end

def show
      @recipes = Recipe.all

    @receipe_id = params[:id].split('-').first or not_found
    @recipe = Recipe.find(@receipe_id) or not_found    
end

end



