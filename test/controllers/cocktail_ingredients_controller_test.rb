require "test_helper"

class CocktailIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocktail_ingredient = cocktail_ingredients(:one)
  end

  test "should get index" do
    get cocktail_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_cocktail_ingredient_url
    assert_response :success
  end

  test "should create cocktail_ingredient" do
    assert_difference('CocktailIngredient.count') do
      post cocktail_ingredients_url, params: { cocktail_ingredient: { cocktail_id: @cocktail_ingredient.cocktail_id, ingredient_id: @cocktail_ingredient.ingredient_id } }
    end

    assert_redirected_to cocktail_ingredient_url(CocktailIngredient.last)
  end

  test "should show cocktail_ingredient" do
    get cocktail_ingredient_url(@cocktail_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_cocktail_ingredient_url(@cocktail_ingredient)
    assert_response :success
  end

  test "should update cocktail_ingredient" do
    patch cocktail_ingredient_url(@cocktail_ingredient), params: { cocktail_ingredient: { cocktail_id: @cocktail_ingredient.cocktail_id, ingredient_id: @cocktail_ingredient.ingredient_id } }
    assert_redirected_to cocktail_ingredient_url(@cocktail_ingredient)
  end

  test "should destroy cocktail_ingredient" do
    assert_difference('CocktailIngredient.count', -1) do
      delete cocktail_ingredient_url(@cocktail_ingredient)
    end

    assert_redirected_to cocktail_ingredients_url
  end
end
