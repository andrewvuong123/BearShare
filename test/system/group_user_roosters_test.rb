require "application_system_test_case"

class GroupUserRoostersTest < ApplicationSystemTestCase
  setup do
    @group_user_rooster = group_user_roosters(:one)
  end

  test "visiting the index" do
    visit group_user_roosters_url
    assert_selector "h1", text: "Group User Roosters"
  end

  test "creating a Group user rooster" do
    visit group_user_roosters_url
    click_on "New Group User Rooster"

    fill_in "Group", with: @group_user_rooster.group_id
    fill_in "Isadmin", with: @group_user_rooster.isadmin
    fill_in "User", with: @group_user_rooster.user_id
    click_on "Create Group user rooster"

    assert_text "Group user rooster was successfully created"
    click_on "Back"
  end

  test "updating a Group user rooster" do
    visit group_user_roosters_url
    click_on "Edit", match: :first

    fill_in "Group", with: @group_user_rooster.group_id
    fill_in "Isadmin", with: @group_user_rooster.isadmin
    fill_in "User", with: @group_user_rooster.user_id
    click_on "Update Group user rooster"

    assert_text "Group user rooster was successfully updated"
    click_on "Back"
  end

  test "destroying a Group user rooster" do
    visit group_user_roosters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group user rooster was successfully destroyed"
  end
end
