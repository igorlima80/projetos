require "application_system_test_case"

class ConstructionsTest < ApplicationSystemTestCase
  setup do
    @construction = constructions(:one)
  end

  test "visiting the index" do
    visit constructions_url
    assert_selector "h1", text: "Constructions"
  end

  test "creating a Construction" do
    visit constructions_url
    click_on "New Construction"

    fill_in "Area", with: @construction.area
    fill_in "Balcony", with: @construction.balcony
    fill_in "Barbecue grill", with: @construction.barbecue_grill
    fill_in "Bathroom", with: @construction.bathroom
    fill_in "Bedroom", with: @construction.bedroom
    fill_in "Cars in garage", with: @construction.cars_in_garage
    fill_in "Construction type", with: @construction.construction_type_id
    fill_in "Description", with: @construction.description
    fill_in "End date", with: @construction.end_date
    fill_in "Expected budget", with: @construction.expected_budget
    fill_in "Ground area", with: @construction.ground_area
    fill_in "Home office", with: @construction.home_office
    fill_in "Living room", with: @construction.living_room
    fill_in "Name", with: @construction.name
    fill_in "Pattern", with: @construction.pattern
    fill_in "Start date", with: @construction.start_date
    fill_in "Toilet", with: @construction.toilet
    fill_in "Workplace", with: @construction.workplace_id
    click_on "Create Construction"

    assert_text "Construction was successfully created"
    click_on "Back"
  end

  test "updating a Construction" do
    visit constructions_url
    click_on "Edit", match: :first

    fill_in "Area", with: @construction.area
    fill_in "Balcony", with: @construction.balcony
    fill_in "Barbecue grill", with: @construction.barbecue_grill
    fill_in "Bathroom", with: @construction.bathroom
    fill_in "Bedroom", with: @construction.bedroom
    fill_in "Cars in garage", with: @construction.cars_in_garage
    fill_in "Construction type", with: @construction.construction_type_id
    fill_in "Description", with: @construction.description
    fill_in "End date", with: @construction.end_date
    fill_in "Expected budget", with: @construction.expected_budget
    fill_in "Ground area", with: @construction.ground_area
    fill_in "Home office", with: @construction.home_office
    fill_in "Living room", with: @construction.living_room
    fill_in "Name", with: @construction.name
    fill_in "Pattern", with: @construction.pattern
    fill_in "Start date", with: @construction.start_date
    fill_in "Toilet", with: @construction.toilet
    fill_in "Workplace", with: @construction.workplace_id
    click_on "Update Construction"

    assert_text "Construction was successfully updated"
    click_on "Back"
  end

  test "destroying a Construction" do
    visit constructions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Construction was successfully destroyed"
  end
end
