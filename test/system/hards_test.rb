require "application_system_test_case"

class HardsTest < ApplicationSystemTestCase
  setup do
    @hard = hards(:one)
  end

  test "visiting the index" do
    visit hards_url
    assert_selector "h1", text: "Hards"
  end

  test "creating a Hard" do
    visit hards_url
    click_on "New Hard"

    fill_in "Name", with: @hard.name
    click_on "Create Hard"

    assert_text "Hard was successfully created"
    click_on "Back"
  end

  test "updating a Hard" do
    visit hards_url
    click_on "Edit", match: :first

    fill_in "Name", with: @hard.name
    click_on "Update Hard"

    assert_text "Hard was successfully updated"
    click_on "Back"
  end

  test "destroying a Hard" do
    visit hards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hard was successfully destroyed"
  end
end
