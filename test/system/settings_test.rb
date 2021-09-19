require "application_system_test_case"

class SettingsTest < ApplicationSystemTestCase
  setup do
    @setting = settings(:one)
  end

  test "visiting the index" do
    visit settings_url
    assert_selector "h1", text: "Settings"
  end

  test "creating a Setting" do
    visit settings_url
    click_on "New Setting"

    fill_in "Fee with service", with: @setting.fee_with_service
    fill_in "Fee without service", with: @setting.fee_without_service
    fill_in "Percentage net value partial", with: @setting.percentage_net_value_partial
    fill_in "Percentage net value total", with: @setting.percentage_net_value_total
    click_on "Create Setting"

    assert_text "Setting was successfully created"
    click_on "Back"
  end

  test "updating a Setting" do
    visit settings_url
    click_on "Edit", match: :first

    fill_in "Fee with service", with: @setting.fee_with_service
    fill_in "Fee without service", with: @setting.fee_without_service
    fill_in "Percentage net value partial", with: @setting.percentage_net_value_partial
    fill_in "Percentage net value total", with: @setting.percentage_net_value_total
    click_on "Update Setting"

    assert_text "Setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Setting" do
    visit settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Setting was successfully destroyed"
  end
end
