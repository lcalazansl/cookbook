class RecipesController < ActionController::Base
  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end
  def new
    @recipe = Recipe.new
  end
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipes_path(@recipe)
  end
  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipes_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :avg_shelf_life)
  end
end
