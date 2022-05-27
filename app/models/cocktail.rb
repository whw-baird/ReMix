class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :bar

  has_many :cocktail_ingredients
  has_many :cocktail_comments

  accepts_nested_attributes_for :cocktail_ingredients, allow_destroy: :true
end
