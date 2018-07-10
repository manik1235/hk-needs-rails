require "application_system_test_case"

class V2NeedsTest < ApplicationSystemTestCase
  setup do
    @v2_need = v2_needs(:one)
  end

  test "visiting the index" do
    visit v2_needs_url
    assert_selector "h1", text: "V2 Needs"
  end

  test "creating a V2 need" do
    visit v2_needs_url
    click_on "New V2 Need"

    fill_in "Abandoned", with: @v2_need.abandoned
    fill_in "Allocated", with: @v2_need.allocated
    fill_in "Budgeted", with: @v2_need.budgeted
    fill_in "Item", with: @v2_need.item
    fill_in "Purchased", with: @v2_need.purchased
    fill_in "User", with: @v2_need.user
    click_on "Create V2 need"

    assert_text "V2 need was successfully created"
    click_on "Back"
  end

  test "updating a V2 need" do
    visit v2_needs_url
    click_on "Edit", match: :first

    fill_in "Abandoned", with: @v2_need.abandoned
    fill_in "Allocated", with: @v2_need.allocated
    fill_in "Budgeted", with: @v2_need.budgeted
    fill_in "Item", with: @v2_need.item
    fill_in "Purchased", with: @v2_need.purchased
    fill_in "User", with: @v2_need.user
    click_on "Update V2 need"

    assert_text "V2 need was successfully updated"
    click_on "Back"
  end

  test "destroying a V2 need" do
    visit v2_needs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "V2 need was successfully destroyed"
  end
end
