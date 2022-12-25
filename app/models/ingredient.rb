class Ingredient < ApplicationRecord::Base
  has_many :measurements
  has_many :recipes, through: :measurements
end
