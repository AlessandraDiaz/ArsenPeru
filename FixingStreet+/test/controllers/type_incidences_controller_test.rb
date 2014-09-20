require 'test_helper'

class TypeIncidencesControllerTest < ActionController::TestCase
  setup do
    @type_incidence = type_incidences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_incidences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_incidence" do
    assert_difference('TypeIncidence.count') do
      post :create, type_incidence: { name: @type_incidence.name, status: @type_incidence.status }
    end

    assert_redirected_to type_incidence_path(assigns(:type_incidence))
  end

  test "should show type_incidence" do
    get :show, id: @type_incidence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_incidence
    assert_response :success
  end

  test "should update type_incidence" do
    patch :update, id: @type_incidence, type_incidence: { name: @type_incidence.name, status: @type_incidence.status }
    assert_redirected_to type_incidence_path(assigns(:type_incidence))
  end

  test "should destroy type_incidence" do
    assert_difference('TypeIncidence.count', -1) do
      delete :destroy, id: @type_incidence
    end

    assert_redirected_to type_incidences_path
  end
end
