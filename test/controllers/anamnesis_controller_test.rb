require "test_helper"

class AnamnesisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anamnesi = anamnesis(:one)
  end

  test "should get index" do
    get anamnesis_url
    assert_response :success
  end

  test "should get new" do
    get new_anamnesi_url
    assert_response :success
  end

  test "should create anamnesi" do
    assert_difference('Anamnesi.count') do
      post anamnesis_url, params: { anamnesi: { occupation_area_id: @anamnesi.occupation_area_id } }
    end

    assert_redirected_to anamnesi_url(Anamnesi.last)
  end

  test "should show anamnesi" do
    get anamnesi_url(@anamnesi)
    assert_response :success
  end

  test "should get edit" do
    get edit_anamnesi_url(@anamnesi)
    assert_response :success
  end

  test "should update anamnesi" do
    patch anamnesi_url(@anamnesi), params: { anamnesi: { occupation_area_id: @anamnesi.occupation_area_id } }
    assert_redirected_to anamnesi_url(@anamnesi)
  end

  test "should destroy anamnesi" do
    assert_difference('Anamnesi.count', -1) do
      delete anamnesi_url(@anamnesi)
    end

    assert_redirected_to anamnesis_url
  end
end
