# == Schema Information
#
# Table name: bars
#
#  id         :bigint           not null, primary key
#  bar_name   :string           default("Hole in the Wall"), not null
#  owner_id   :bigint           not null
#  about      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Bar < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :barflies
  has_many :own_cocktails, class_name: "Cocktail", dependent: :destroy
end
