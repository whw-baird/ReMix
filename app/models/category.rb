class Category < ApplicationRecord
  has_many :ingredients
  has_many :cocktail_ingredients, through: :ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
