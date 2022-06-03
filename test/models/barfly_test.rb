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
require "test_helper"

class BarflyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
