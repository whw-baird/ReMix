class Bar < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :barflies
  has_many :own_cocktails, class_name: "Cocktail", dependent: :destroy
end
