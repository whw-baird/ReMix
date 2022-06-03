# == Schema Information
#
# Table name: barflies
#
#  id           :bigint           not null, primary key
#  bar_id       :bigint           not null
#  user_id      :bigint           not null
#  is_bartender :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Barfly < ApplicationRecord
  belongs_to :bar
  belongs_to :user
end
