require 'test_helper'

class ConstructionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @construction_type = construction_types(:one)
  end

  test "should get index" do
    get construction_types_url
    assert_response :success
  end

  test "should get new" do
    get new_construction_type_url
    assert_response :success
  end

  test "should create construction_type" do
    assert_difference('ConstructionType.count') do
      post construction_types_url, params: { construction_type: { name: @construction_type.name } }
    end

    assert_redirected_to construction_type_url(ConstructionType.last)
  end

  test "should show construction_type" do
    get construction_type_url(@construction_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_construction_type_url(@construction_type)
    assert_response :success
  end

  test "should update construction_type" do
    patch construction_type_url(@construction_type), params: { construction_type: { name: @construction_type.name } }
    assert_redirected_to construction_type_url(@construction_type)
  end

  test "should destroy construction_type" do
    assert_difference('ConstructionType.count', -1) do
      delete construction_type_url(@construction_type)
    end

    assert_redirected_to construction_types_url
  end
end
