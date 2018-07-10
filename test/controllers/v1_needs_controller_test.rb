require 'test_helper'

class V1NeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v1_need = v1_needs(:one)
  end

  test "should get index" do
    get v1_needs_url
    assert_response :success
  end

  test "should get new" do
    get new_v1_need_url
    assert_response :success
  end

  test "should create v1_need" do
    assert_difference('V1Need.count') do
      post v1_needs_url, params: { v1_need: { allocated: @v1_need.allocated, budgeted: @v1_need.budgeted, item: @v1_need.item, user: @v1_need.user } }
    end

    assert_redirected_to v1_need_url(V1Need.last)
  end

  test "should show v1_need" do
    get v1_need_url(@v1_need)
    assert_response :success
  end

  test "should get edit" do
    get edit_v1_need_url(@v1_need)
    assert_response :success
  end

  test "should update v1_need" do
    patch v1_need_url(@v1_need), params: { v1_need: { allocated: @v1_need.allocated, budgeted: @v1_need.budgeted, item: @v1_need.item, user: @v1_need.user } }
    assert_redirected_to v1_need_url(@v1_need)
  end

  test "should destroy v1_need" do
    assert_difference('V1Need.count', -1) do
      delete v1_need_url(@v1_need)
    end

    assert_redirected_to v1_needs_url
  end
end
