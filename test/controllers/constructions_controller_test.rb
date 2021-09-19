require 'test_helper'

class ConstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @construction = constructions(:one)
  end

  test "should get index" do
    get constructions_url
    assert_response :success
  end

  test "should get new" do
    get new_construction_url
    assert_response :success
  end

  test "should create construction" do
    assert_difference('Construction.count') do
      post constructions_url, params: { construction: { area: @construction.area, balcony: @construction.balcony, barbecue_grill: @construction.barbecue_grill, bathroom: @construction.bathroom, bedroom: @construction.bedroom, cars_in_garage: @construction.cars_in_garage, construction_type_id: @construction.construction_type_id, description: @construction.description, end_date: @construction.end_date, expected_budget: @construction.expected_budget, ground_area: @construction.ground_area, home_office: @construction.home_office, living_room: @construction.living_room, name: @construction.name, pattern: @construction.pattern, start_date: @construction.start_date, toilet: @construction.toilet, workplace_id: @construction.workplace_id } }
    end

    assert_redirected_to construction_url(Construction.last)
  end

  test "should show construction" do
    get construction_url(@construction)
    assert_response :success
  end

  test "should get edit" do
    get edit_construction_url(@construction)
    assert_response :success
  end

  test "should update construction" do
    patch construction_url(@construction), params: { construction: { area: @construction.area, balcony: @construction.balcony, barbecue_grill: @construction.barbecue_grill, bathroom: @construction.bathroom, bedroom: @construction.bedroom, cars_in_garage: @construction.cars_in_garage, construction_type_id: @construction.construction_type_id, description: @construction.description, end_date: @construction.end_date, expected_budget: @construction.expected_budget, ground_area: @construction.ground_area, home_office: @construction.home_office, living_room: @construction.living_room, name: @construction.name, pattern: @construction.pattern, start_date: @construction.start_date, toilet: @construction.toilet, workplace_id: @construction.workplace_id } }
    assert_redirected_to construction_url(@construction)
  end

  test "should destroy construction" do
    assert_difference('Construction.count', -1) do
      delete construction_url(@construction)
    end

    assert_redirected_to constructions_url
  end
end
