require "application_system_test_case"

class AnamnesisTest < ApplicationSystemTestCase
  setup do
    @anamnesi = anamnesis(:one)
  end

  test "visiting the index" do
    visit anamnesis_url
    assert_selector "h1", text: "Anamnesis"
  end

  test "creating a Anamnesi" do
    visit anamnesis_url
    click_on "New Anamnesi"

    fill_in "Occupation area", with: @anamnesi.occupation_area_id
    click_on "Create Anamnesi"

    assert_text "Anamnesi was successfully created"
    click_on "Back"
  end

  test "updating a Anamnesi" do
    visit anamnesis_url
    click_on "Edit", match: :first

    fill_in "Occupation area", with: @anamnesi.occupation_area_id
    click_on "Update Anamnesi"

    assert_text "Anamnesi was successfully updated"
    click_on "Back"
  end

  test "destroying a Anamnesi" do
    visit anamnesis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anamnesi was successfully destroyed"
  end
end
