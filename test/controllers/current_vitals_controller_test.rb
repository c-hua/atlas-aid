require 'test_helper'

class CurrentVitalsControllerTest < ActionController::TestCase
  setup do
    @current_vital = current_vitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_vitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_vital" do
    assert_difference('CurrentVital.count') do
      post :create, current_vital: { current_interventions: @current_vital.current_interventions, dosage_dates: @current_vital.dosage_dates, eligibility_clinical: @current_vital.eligibility_clinical, status: @current_vital.status, surgeries: @current_vital.surgeries }
    end

    assert_redirected_to current_vital_path(assigns(:current_vital))
  end

  test "should show current_vital" do
    get :show, id: @current_vital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_vital
    assert_response :success
  end

  test "should update current_vital" do
    patch :update, id: @current_vital, current_vital: { current_interventions: @current_vital.current_interventions, dosage_dates: @current_vital.dosage_dates, eligibility_clinical: @current_vital.eligibility_clinical, status: @current_vital.status, surgeries: @current_vital.surgeries }
    assert_redirected_to current_vital_path(assigns(:current_vital))
  end

  test "should destroy current_vital" do
    assert_difference('CurrentVital.count', -1) do
      delete :destroy, id: @current_vital
    end

    assert_redirected_to current_vitals_path
  end
end
