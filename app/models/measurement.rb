class Measurement < ApplicationRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
end
