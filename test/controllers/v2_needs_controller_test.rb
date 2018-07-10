require 'test_helper'

class V2NeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v2_need = v2_needs(:one)
  end

  test "should get index" do
    get v2_needs_url
    assert_response :success
  end

  test "should get new" do
    get new_v2_need_url
    assert_response :success
  end

  test "should create v2_need" do
    assert_difference('V2Need.count') do
      post v2_needs_url, params: { v2_need: { abandoned: @v2_need.abandoned, allocated: @v2_need.allocated, budgeted: @v2_need.budgeted, item: @v2_need.item, purchased: @v2_need.purchased, user: @v2_need.user } }
    end

    assert_redirected_to v2_need_url(V2Need.last)
  end

  test "should show v2_need" do
    get v2_need_url(@v2_need)
    assert_response :success
  end

  test "should get edit" do
    get edit_v2_need_url(@v2_need)
    assert_response :success
  end

  test "should update v2_need" do
    patch v2_need_url(@v2_need), params: { v2_need: { abandoned: @v2_need.abandoned, allocated: @v2_need.allocated, budgeted: @v2_need.budgeted, item: @v2_need.item, purchased: @v2_need.purchased, user: @v2_need.user } }
    assert_redirected_to v2_need_url(@v2_need)
  end

  test "should destroy v2_need" do
    assert_difference('V2Need.count', -1) do
      delete v2_need_url(@v2_need)
    end

    assert_redirected_to v2_needs_url
  end
end
