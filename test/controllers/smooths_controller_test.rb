require 'test_helper'

class SmoothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smooth = smooths(:one)
  end

  test "should get index" do
    get smooths_url
    assert_response :success
  end

  test "should get new" do
    get new_smooth_url
    assert_response :success
  end

  test "should create smooth" do
    assert_difference('Smooth.count') do
      post smooths_url, params: { smooth: { name: @smooth.name } }
    end

    assert_redirected_to smooth_url(Smooth.last)
  end

  test "should show smooth" do
    get smooth_url(@smooth)
    assert_response :success
  end

  test "should get edit" do
    get edit_smooth_url(@smooth)
    assert_response :success
  end

  test "should update smooth" do
    patch smooth_url(@smooth), params: { smooth: { name: @smooth.name } }
    assert_redirected_to smooth_url(@smooth)
  end

  test "should destroy smooth" do
    assert_difference('Smooth.count', -1) do
      delete smooth_url(@smooth)
    end

    assert_redirected_to smooths_url
  end
end
