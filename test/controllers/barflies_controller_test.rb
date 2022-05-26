require "test_helper"

class BarfliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barfly = barflies(:one)
  end

  test "should get index" do
    get barflies_url
    assert_response :success
  end

  test "should get new" do
    get new_barfly_url
    assert_response :success
  end

  test "should create barfly" do
    assert_difference('Barfly.count') do
      post barflies_url, params: { barfly: { bar_id: @barfly.bar_id, is_bartender: @barfly.is_bartender, user_id: @barfly.user_id } }
    end

    assert_redirected_to barfly_url(Barfly.last)
  end

  test "should show barfly" do
    get barfly_url(@barfly)
    assert_response :success
  end

  test "should get edit" do
    get edit_barfly_url(@barfly)
    assert_response :success
  end

  test "should update barfly" do
    patch barfly_url(@barfly), params: { barfly: { bar_id: @barfly.bar_id, is_bartender: @barfly.is_bartender, user_id: @barfly.user_id } }
    assert_redirected_to barfly_url(@barfly)
  end

  test "should destroy barfly" do
    assert_difference('Barfly.count', -1) do
      delete barfly_url(@barfly)
    end

    assert_redirected_to barflies_url
  end
end
