# == Schema Information
#
# Table name: cocktail_comments
#
#  id          :bigint           not null, primary key
#  cocktail_id :bigint           not null
#  user_id     :bigint           not null
#  body        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class CocktailComment < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user
end
