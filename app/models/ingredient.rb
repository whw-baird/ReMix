# == Schema Information
#
# Table name: ingredients
#
#  id          :bigint           not null, primary key
#  name        :string
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Ingredient < ApplicationRecord
  belongs_to :category

  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
