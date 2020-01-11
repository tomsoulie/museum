require "application_system_test_case"

class SmoothsTest < ApplicationSystemTestCase
  setup do
    @smooth = smooths(:one)
  end

  test "visiting the index" do
    visit smooths_url
    assert_selector "h1", text: "Smooths"
  end

  test "creating a Smooth" do
    visit smooths_url
    click_on "New Smooth"

    fill_in "Name", with: @smooth.name
    click_on "Create Smooth"

    assert_text "Smooth was successfully created"
    click_on "Back"
  end

  test "updating a Smooth" do
    visit smooths_url
    click_on "Edit", match: :first

    fill_in "Name", with: @smooth.name
    click_on "Update Smooth"

    assert_text "Smooth was successfully updated"
    click_on "Back"
  end

  test "destroying a Smooth" do
    visit smooths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smooth was successfully destroyed"
  end
end
