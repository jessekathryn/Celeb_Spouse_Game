require 'test_helper'

class MarriagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marriage = marriages(:one)
  end

  test "should get index" do
    get marriages_url
    assert_response :success
  end

  test "should get new" do
    get new_marriage_url
    assert_response :success
  end

  test "should create marriage" do
    assert_difference('Marriage.count') do
      post marriages_url, params: { marriage: { end_year: @marriage.end_year, husband: @marriage.husband, start_year: @marriage.start_year, wife: @marriage.wife } }
    end

    assert_redirected_to marriage_url(Marriage.last)
  end

  test "should show marriage" do
    get marriage_url(@marriage)
    assert_response :success
  end

  test "should get edit" do
    get edit_marriage_url(@marriage)
    assert_response :success
  end

  test "should update marriage" do
    patch marriage_url(@marriage), params: { marriage: { end_year: @marriage.end_year, husband: @marriage.husband, start_year: @marriage.start_year, wife: @marriage.wife } }
    assert_redirected_to marriage_url(@marriage)
  end

  test "should destroy marriage" do
    assert_difference('Marriage.count', -1) do
      delete marriage_url(@marriage)
    end

    assert_redirected_to marriages_url
  end
end
