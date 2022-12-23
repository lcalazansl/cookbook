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
    @recipe = recipe.new(params[:recipe])
    @recipe.save
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :avg_shelf_life)
  end
end
