require "test_helper"

class CocktailCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocktail_comment = cocktail_comments(:one)
  end

  test "should get index" do
    get cocktail_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_cocktail_comment_url
    assert_response :success
  end

  test "should create cocktail_comment" do
    assert_difference('CocktailComment.count') do
      post cocktail_comments_url, params: { cocktail_comment: { body: @cocktail_comment.body, cocktail_id: @cocktail_comment.cocktail_id, user_id: @cocktail_comment.user_id } }
    end

    assert_redirected_to cocktail_comment_url(CocktailComment.last)
  end

  test "should show cocktail_comment" do
    get cocktail_comment_url(@cocktail_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_cocktail_comment_url(@cocktail_comment)
    assert_response :success
  end

  test "should update cocktail_comment" do
    patch cocktail_comment_url(@cocktail_comment), params: { cocktail_comment: { body: @cocktail_comment.body, cocktail_id: @cocktail_comment.cocktail_id, user_id: @cocktail_comment.user_id } }
    assert_redirected_to cocktail_comment_url(@cocktail_comment)
  end

  test "should destroy cocktail_comment" do
    assert_difference('CocktailComment.count', -1) do
      delete cocktail_comment_url(@cocktail_comment)
    end

    assert_redirected_to cocktail_comments_url
  end
end
