require 'test_helper'

class GroupUserRoostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_user_rooster = group_user_roosters(:one)
  end

  test "should get index" do
    get group_user_roosters_url
    assert_response :success
  end

  test "should get new" do
    get new_group_user_rooster_url
    assert_response :success
  end

  test "should create group_user_rooster" do
    assert_difference('GroupUserRooster.count') do
      post group_user_roosters_url, params: { group_user_rooster: { group_id: @group_user_rooster.group_id, isadmin: @group_user_rooster.isadmin, user_id: @group_user_rooster.user_id } }
    end

    assert_redirected_to group_user_rooster_url(GroupUserRooster.last)
  end

  test "should show group_user_rooster" do
    get group_user_rooster_url(@group_user_rooster)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_user_rooster_url(@group_user_rooster)
    assert_response :success
  end

  test "should update group_user_rooster" do
    patch group_user_rooster_url(@group_user_rooster), params: { group_user_rooster: { group_id: @group_user_rooster.group_id, isadmin: @group_user_rooster.isadmin, user_id: @group_user_rooster.user_id } }
    assert_redirected_to group_user_rooster_url(@group_user_rooster)
  end

  test "should destroy group_user_rooster" do
    assert_difference('GroupUserRooster.count', -1) do
      delete group_user_rooster_url(@group_user_rooster)
    end

    assert_redirected_to group_user_roosters_url
  end
end
