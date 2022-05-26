require "test_helper"

class CocktailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocktail = cocktails(:one)
  end

  test "should get index" do
    get cocktails_url
    assert_response :success
  end

  test "should get new" do
    get new_cocktail_url
    assert_response :success
  end

  test "should create cocktail" do
    assert_difference('Cocktail.count') do
      post cocktails_url, params: { cocktail: { bar_id: @cocktail.bar_id, name: @cocktail.name, recipe: @cocktail.recipe, user_id: @cocktail.user_id } }
    end

    assert_redirected_to cocktail_url(Cocktail.last)
  end

  test "should show cocktail" do
    get cocktail_url(@cocktail)
    assert_response :success
  end

  test "should get edit" do
    get edit_cocktail_url(@cocktail)
    assert_response :success
  end

  test "should update cocktail" do
    patch cocktail_url(@cocktail), params: { cocktail: { bar_id: @cocktail.bar_id, name: @cocktail.name, recipe: @cocktail.recipe, user_id: @cocktail.user_id } }
    assert_redirected_to cocktail_url(@cocktail)
  end

  test "should destroy cocktail" do
    assert_difference('Cocktail.count', -1) do
      delete cocktail_url(@cocktail)
    end

    assert_redirected_to cocktails_url
  end
end
