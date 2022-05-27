class Bar < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :barflies
  has_many :cocktails
end
