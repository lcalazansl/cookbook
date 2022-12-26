class IngredientsController < ActionController::Base
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = ingredient.find(ingredient_params)
    
  end
  def new
    @ingredient = Ingredient.new
  end
  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end
  def edit
    # @ingredient = ingredient.find(params[:id])
  end
  def update
    # @ingredient = ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end
  def destroy
    raise
    @ingredient = Ingredient.find(ingredient_params)
    raise
    @ingredient.destroy
    redirect_to ingredient_path, status: :see_other
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :storage, :avrg_shelf_life, :allergen_group, :diet_group, :category)
  end
end
