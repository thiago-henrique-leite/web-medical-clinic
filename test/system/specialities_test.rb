require "application_system_test_case"

class SpecialitysTest < ApplicationSystemTestCase
  setup do
    @speciality = specialities(:one)
  end

  test "visiting the index" do
    visit specialities_url
    assert_selector "h1", text: "Occupation Areas"
  end

  test "creating a Occupation area" do
    visit specialities_url
    click_on "New Occupation Area"

    fill_in "Description", with: @speciality.description
    fill_in "Name", with: @speciality.name
    click_on "Create Occupation area"

    assert_text "Occupation area was successfully created"
    click_on "Back"
  end

  test "updating a Occupation area" do
    visit specialities_url
    click_on "Edit", match: :first

    fill_in "Description", with: @speciality.description
    fill_in "Name", with: @speciality.name
    click_on "Update Occupation area"

    assert_text "Occupation area was successfully updated"
    click_on "Back"
  end

  test "destroying a Occupation area" do
    visit specialities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Occupation area was successfully destroyed"
  end
end
