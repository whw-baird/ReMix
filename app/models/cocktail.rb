# == Schema Information
#
# Table name: cocktails
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  bar_id     :bigint
#  name       :string           default("My Cocktail"), not null
#  recipe     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :bar, optional: true

  has_many :cocktail_ingredients, dependent: :destroy
  has_many :comments, class_name: "CocktailComment", dependent: :destroy

  accepts_nested_attributes_for :cocktail_ingredients, allow_destroy: :true
end
