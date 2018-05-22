require "application_system_test_case"

class IcosTest < ApplicationSystemTestCase
  setup do
    @ico = icos(:one)
  end

  test "visiting the index" do
    visit icos_url
    assert_selector "h1", text: "Icos"
  end

  test "creating a Ico" do
    visit icos_url
    click_on "New Ico"

    fill_in "Country", with: @ico.country
    fill_in "Description", with: @ico.description
    fill_in "Goal", with: @ico.goal
    fill_in "Launch", with: @ico.launch
    fill_in "Name", with: @ico.name
    fill_in "Price", with: @ico.price
    fill_in "Website", with: @ico.website
    click_on "Create Ico"

    assert_text "Ico was successfully created"
    click_on "Back"
  end

  test "updating a Ico" do
    visit icos_url
    click_on "Edit", match: :first

    fill_in "Country", with: @ico.country
    fill_in "Description", with: @ico.description
    fill_in "Goal", with: @ico.goal
    fill_in "Launch", with: @ico.launch
    fill_in "Name", with: @ico.name
    fill_in "Price", with: @ico.price
    fill_in "Website", with: @ico.website
    click_on "Update Ico"

    assert_text "Ico was successfully updated"
    click_on "Back"
  end

  test "destroying a Ico" do
    visit icos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ico was successfully destroyed"
  end
end
