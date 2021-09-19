require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { admission: @person.admission, birth: @person.birth, business_email: @person.business_email, city_id: @person.city_id, county_id: @person.county_id, cpf: @person.cpf, father: @person.father, mother: @person.mother, name: @person.name, observations: @person.observations, place_id: @person.place_id, registration: @person.registration, rg: @person.rg, user_id: @person.user_id, workplace_id: @person.workplace_id } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { admission: @person.admission, birth: @person.birth, business_email: @person.business_email, city_id: @person.city_id, county_id: @person.county_id, cpf: @person.cpf, father: @person.father, mother: @person.mother, name: @person.name, observations: @person.observations, place_id: @person.place_id, registration: @person.registration, rg: @person.rg, user_id: @person.user_id, workplace_id: @person.workplace_id } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
