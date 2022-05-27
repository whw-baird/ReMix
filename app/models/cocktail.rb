class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :bar

  has_many :cocktail_ingredients
  has_many :cocktail_comments
end
