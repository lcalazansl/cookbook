class MeasurementsController < ApplicationController
  def index
    @recipes = Recipe.all
    @ingredients = Ingredient.all
    @measurements = Measurement.all
  end
end
