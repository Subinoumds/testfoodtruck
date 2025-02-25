require "test_helper"

class FoodTrucksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_trucks_index_url
    assert_response :success
  end

  test "should get show" do
    get food_trucks_show_url
    assert_response :success
  end

  test "should get new" do
    get food_trucks_new_url
    assert_response :success
  end

  test "should get edit" do
    get food_trucks_edit_url
    assert_response :success
  end
end
