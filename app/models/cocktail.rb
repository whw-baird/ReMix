class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :bar, optional: true

  has_many :cocktail_ingredients
  has_many :comments, class_name: "CocktailComment", dependent: :destroy

  accepts_nested_attributes_for :cocktail_ingredients, allow_destroy: :true
end
