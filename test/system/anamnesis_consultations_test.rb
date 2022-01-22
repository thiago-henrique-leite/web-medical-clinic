require "application_system_test_case"

class AnamnesisConsultationsTest < ApplicationSystemTestCase
  setup do
    @anamnesis_consultation = anamnesis_consultations(:one)
  end

  test "visiting the index" do
    visit anamnesis_consultations_url
    assert_selector "h1", text: "Anamnesis Consultations"
  end

  test "creating a Anamnesis consultation" do
    visit anamnesis_consultations_url
    click_on "New Anamnesis Consultation"

    fill_in "Anamnesi", with: @anamnesis_consultation.anamnesi_id
    fill_in "Answer", with: @anamnesis_consultation.answer
    fill_in "Consultation", with: @anamnesis_consultation.consultation_id
    click_on "Create Anamnesis consultation"

    assert_text "Anamnesis consultation was successfully created"
    click_on "Back"
  end

  test "updating a Anamnesis consultation" do
    visit anamnesis_consultations_url
    click_on "Edit", match: :first

    fill_in "Anamnesi", with: @anamnesis_consultation.anamnesi_id
    fill_in "Answer", with: @anamnesis_consultation.answer
    fill_in "Consultation", with: @anamnesis_consultation.consultation_id
    click_on "Update Anamnesis consultation"

    assert_text "Anamnesis consultation was successfully updated"
    click_on "Back"
  end

  test "destroying a Anamnesis consultation" do
    visit anamnesis_consultations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anamnesis consultation was successfully destroyed"
  end
end
