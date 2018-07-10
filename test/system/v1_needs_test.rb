require "application_system_test_case"

class V1NeedsTest < ApplicationSystemTestCase
  setup do
    @v1_need = v1_needs(:one)
  end

  test "visiting the index" do
    visit v1_needs_url
    assert_selector "h1", text: "V1 Needs"
  end

  test "creating a V1 need" do
    visit v1_needs_url
    click_on "New V1 Need"

    fill_in "Allocated", with: @v1_need.allocated
    fill_in "Budgeted", with: @v1_need.budgeted
    fill_in "Item", with: @v1_need.item
    fill_in "User", with: @v1_need.user
    click_on "Create V1 need"

    assert_text "V1 need was successfully created"
    click_on "Back"
  end

  test "updating a V1 need" do
    visit v1_needs_url
    click_on "Edit", match: :first

    fill_in "Allocated", with: @v1_need.allocated
    fill_in "Budgeted", with: @v1_need.budgeted
    fill_in "Item", with: @v1_need.item
    fill_in "User", with: @v1_need.user
    click_on "Update V1 need"

    assert_text "V1 need was successfully updated"
    click_on "Back"
  end

  test "destroying a V1 need" do
    visit v1_needs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "V1 need was successfully destroyed"
  end
end
