require 'test_helper'

class VitalsControllerTest < ActionController::TestCase
  setup do
    @vital = vitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vital" do
    assert_difference('Vital.count') do
      post :create, vital: { blood_pressure: @vital.blood_pressure, chemo_date: @vital.chemo_date, chemo_type: @vital.chemo_type, date: @vital.date, heart_rate: @vital.heart_rate, red_blood_cell: @vital.red_blood_cell, respiratory_rate: @vital.respiratory_rate, temperature: @vital.temperature, white_blood_cell: @vital.white_blood_cell }
    end

    assert_redirected_to vital_path(assigns(:vital))
  end

  test "should show vital" do
    get :show, id: @vital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vital
    assert_response :success
  end

  test "should update vital" do
    patch :update, id: @vital, vital: { blood_pressure: @vital.blood_pressure, chemo_date: @vital.chemo_date, chemo_type: @vital.chemo_type, date: @vital.date, heart_rate: @vital.heart_rate, red_blood_cell: @vital.red_blood_cell, respiratory_rate: @vital.respiratory_rate, temperature: @vital.temperature, white_blood_cell: @vital.white_blood_cell }
    assert_redirected_to vital_path(assigns(:vital))
  end

  test "should destroy vital" do
    assert_difference('Vital.count', -1) do
      delete :destroy, id: @vital
    end

    assert_redirected_to vitals_path
  end
end
