require 'test_helper'

class HardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hard = hards(:one)
  end

  test "should get index" do
    get hards_url
    assert_response :success
  end

  test "should get new" do
    get new_hard_url
    assert_response :success
  end

  test "should create hard" do
    assert_difference('Hard.count') do
      post hards_url, params: { hard: { name: @hard.name } }
    end

    assert_redirected_to hard_url(Hard.last)
  end

  test "should show hard" do
    get hard_url(@hard)
    assert_response :success
  end

  test "should get edit" do
    get edit_hard_url(@hard)
    assert_response :success
  end

  test "should update hard" do
    patch hard_url(@hard), params: { hard: { name: @hard.name } }
    assert_redirected_to hard_url(@hard)
  end

  test "should destroy hard" do
    assert_difference('Hard.count', -1) do
      delete hard_url(@hard)
    end

    assert_redirected_to hards_url
  end
end
