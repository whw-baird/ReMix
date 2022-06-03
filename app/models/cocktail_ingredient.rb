# == Schema Information
#
# Table name: cocktail_ingredients
#
#  id            :bigint           not null, primary key
#  cocktail_id   :bigint           not null
#  ingredient_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class CocktailIngredient < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
end
