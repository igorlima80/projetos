require "application_system_test_case"

class ConstructionTypesTest < ApplicationSystemTestCase
  setup do
    @construction_type = construction_types(:one)
  end

  test "visiting the index" do
    visit construction_types_url
    assert_selector "h1", text: "Construction Types"
  end

  test "creating a Construction type" do
    visit construction_types_url
    click_on "New Construction Type"

    fill_in "Name", with: @construction_type.name
    click_on "Create Construction type"

    assert_text "Construction type was successfully created"
    click_on "Back"
  end

  test "updating a Construction type" do
    visit construction_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @construction_type.name
    click_on "Update Construction type"

    assert_text "Construction type was successfully updated"
    click_on "Back"
  end

  test "destroying a Construction type" do
    visit construction_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Construction type was successfully destroyed"
  end
end
