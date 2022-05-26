require "application_system_test_case"

class BarfliesTest < ApplicationSystemTestCase
  setup do
    @barfly = barflies(:one)
  end

  test "visiting the index" do
    visit barflies_url
    assert_selector "h1", text: "Barflies"
  end

  test "creating a Barfly" do
    visit barflies_url
    click_on "New Barfly"

    fill_in "Bar", with: @barfly.bar_id
    check "Is bartender" if @barfly.is_bartender
    fill_in "User", with: @barfly.user_id
    click_on "Create Barfly"

    assert_text "Barfly was successfully created"
    click_on "Back"
  end

  test "updating a Barfly" do
    visit barflies_url
    click_on "Edit", match: :first

    fill_in "Bar", with: @barfly.bar_id
    check "Is bartender" if @barfly.is_bartender
    fill_in "User", with: @barfly.user_id
    click_on "Update Barfly"

    assert_text "Barfly was successfully updated"
    click_on "Back"
  end

  test "destroying a Barfly" do
    visit barflies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barfly was successfully destroyed"
  end
end
