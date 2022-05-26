require "application_system_test_case"

class CocktailIngredientsTest < ApplicationSystemTestCase
  setup do
    @cocktail_ingredient = cocktail_ingredients(:one)
  end

  test "visiting the index" do
    visit cocktail_ingredients_url
    assert_selector "h1", text: "Cocktail Ingredients"
  end

  test "creating a Cocktail ingredient" do
    visit cocktail_ingredients_url
    click_on "New Cocktail Ingredient"

    fill_in "Cocktail", with: @cocktail_ingredient.cocktail_id
    fill_in "Ingredient", with: @cocktail_ingredient.ingredient_id
    click_on "Create Cocktail ingredient"

    assert_text "Cocktail ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Cocktail ingredient" do
    visit cocktail_ingredients_url
    click_on "Edit", match: :first

    fill_in "Cocktail", with: @cocktail_ingredient.cocktail_id
    fill_in "Ingredient", with: @cocktail_ingredient.ingredient_id
    click_on "Update Cocktail ingredient"

    assert_text "Cocktail ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Cocktail ingredient" do
    visit cocktail_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cocktail ingredient was successfully destroyed"
  end
end
