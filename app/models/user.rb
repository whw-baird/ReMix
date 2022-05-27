class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :cocktails, dependent: :destroy
  has_many :barflies, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :cocktail_comments, dependent: :destroy
  has_many :bars, foreign_key: :owner
  has_many :followed_bars, through: :barflies, source: :bars
  has_many :leaders, through: :follows
  has_many :followers, through: :follows
  has_many :feed, through: :leaders, source: :cocktails

end
