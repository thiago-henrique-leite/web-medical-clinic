require "application_system_test_case"

class ConsultationsTest < ApplicationSystemTestCase
  setup do
    @consultation = consultations(:one)
  end

  test "visiting the index" do
    visit consultations_url
    assert_selector "h1", text: "Consultations"
  end

  test "creating a Consultation" do
    visit consultations_url
    click_on "New Consultation"

    fill_in "Consultation date", with: @consultation.consultation_date
    fill_in "Doctor", with: @consultation.doctor_id
    fill_in "Link", with: @consultation.link
    fill_in "Patient", with: @consultation.patient_id
    click_on "Create Consultation"

    assert_text "Consultation was successfully created"
    click_on "Back"
  end

  test "updating a Consultation" do
    visit consultations_url
    click_on "Edit", match: :first

    fill_in "Consultation date", with: @consultation.consultation_date
    fill_in "Doctor", with: @consultation.doctor_id
    fill_in "Link", with: @consultation.link
    fill_in "Patient", with: @consultation.patient_id
    click_on "Update Consultation"

    assert_text "Consultation was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultation" do
    visit consultations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultation was successfully destroyed"
  end
end
