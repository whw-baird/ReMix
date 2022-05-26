require "application_system_test_case"

class CocktailCommentsTest < ApplicationSystemTestCase
  setup do
    @cocktail_comment = cocktail_comments(:one)
  end

  test "visiting the index" do
    visit cocktail_comments_url
    assert_selector "h1", text: "Cocktail Comments"
  end

  test "creating a Cocktail comment" do
    visit cocktail_comments_url
    click_on "New Cocktail Comment"

    fill_in "Body", with: @cocktail_comment.body
    fill_in "Cocktail", with: @cocktail_comment.cocktail_id
    fill_in "User", with: @cocktail_comment.user_id
    click_on "Create Cocktail comment"

    assert_text "Cocktail comment was successfully created"
    click_on "Back"
  end

  test "updating a Cocktail comment" do
    visit cocktail_comments_url
    click_on "Edit", match: :first

    fill_in "Body", with: @cocktail_comment.body
    fill_in "Cocktail", with: @cocktail_comment.cocktail_id
    fill_in "User", with: @cocktail_comment.user_id
    click_on "Update Cocktail comment"

    assert_text "Cocktail comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Cocktail comment" do
    visit cocktail_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cocktail comment was successfully destroyed"
  end
end
