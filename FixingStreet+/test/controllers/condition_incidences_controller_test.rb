require 'test_helper'

class ConditionIncidencesControllerTest < ActionController::TestCase
  setup do
    @condition_incidence = condition_incidences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condition_incidences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condition_incidence" do
    assert_difference('ConditionIncidence.count') do
      post :create, condition_incidence: { name: @condition_incidence.name, status: @condition_incidence.status }
    end

    assert_redirected_to condition_incidence_path(assigns(:condition_incidence))
  end

  test "should show condition_incidence" do
    get :show, id: @condition_incidence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condition_incidence
    assert_response :success
  end

  test "should update condition_incidence" do
    patch :update, id: @condition_incidence, condition_incidence: { name: @condition_incidence.name, status: @condition_incidence.status }
    assert_redirected_to condition_incidence_path(assigns(:condition_incidence))
  end

  test "should destroy condition_incidence" do
    assert_difference('ConditionIncidence.count', -1) do
      delete :destroy, id: @condition_incidence
    end

    assert_redirected_to condition_incidences_path
  end
end
