require "test_helper"

class AnamnesisConsultationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anamnesis_consultation = anamnesis_consultations(:one)
  end

  test "should get index" do
    get anamnesis_consultations_url
    assert_response :success
  end

  test "should get new" do
    get new_anamnesis_consultation_url
    assert_response :success
  end

  test "should create anamnesis_consultation" do
    assert_difference('AnamnesisConsultation.count') do
      post anamnesis_consultations_url, params: { anamnesis_consultation: { anamnesi_id: @anamnesis_consultation.anamnesi_id, answer: @anamnesis_consultation.answer, consultation_id: @anamnesis_consultation.consultation_id } }
    end

    assert_redirected_to anamnesis_consultation_url(AnamnesisConsultation.last)
  end

  test "should show anamnesis_consultation" do
    get anamnesis_consultation_url(@anamnesis_consultation)
    assert_response :success
  end

  test "should get edit" do
    get edit_anamnesis_consultation_url(@anamnesis_consultation)
    assert_response :success
  end

  test "should update anamnesis_consultation" do
    patch anamnesis_consultation_url(@anamnesis_consultation), params: { anamnesis_consultation: { anamnesi_id: @anamnesis_consultation.anamnesi_id, answer: @anamnesis_consultation.answer, consultation_id: @anamnesis_consultation.consultation_id } }
    assert_redirected_to anamnesis_consultation_url(@anamnesis_consultation)
  end

  test "should destroy anamnesis_consultation" do
    assert_difference('AnamnesisConsultation.count', -1) do
      delete anamnesis_consultation_url(@anamnesis_consultation)
    end

    assert_redirected_to anamnesis_consultations_url
  end
end
