class RecipesController < ActionController::Base
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    # @ingredients = Ingredient.all
    # @measurements = Measurement.all
  end

  def show
    # @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.all
    @measurements = Measurement.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def edit
    # @recipe = Recipe.find(params[:id])
  end

  def update
    # @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(set_recipe).destroy
    redirect_to recipe_path, status: :see_other
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :avg_shelf_life)
  end
end
