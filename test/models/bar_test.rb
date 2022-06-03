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
require "test_helper"

class BarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
