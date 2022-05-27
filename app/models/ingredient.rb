class Ingredient < ApplicationRecord
  belongs_to :category

  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
