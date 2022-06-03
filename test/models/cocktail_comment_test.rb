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
require "test_helper"

class CocktailCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
