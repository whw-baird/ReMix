# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :ingredients
  has_many :cocktail_ingredients, through: :ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
