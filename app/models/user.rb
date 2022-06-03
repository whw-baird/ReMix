# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  username               :citext           not null
#  bio                    :string
#  private                :boolean          default(FALSE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
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
  has_many :followed_bars, through: :barflies, source: :bar
  has_many :leaders, through: :follows
  has_many :followers, through: :follows
  has_many :feed, through: :leaders, source: :cocktails

  validates :username,
    presence: true,
    uniqueness: true,
    format: { 
      with: /\A[\w_\.]+\z/i,
      message: "can only contain letters, numbers, periods, and underscores"
    }
end
