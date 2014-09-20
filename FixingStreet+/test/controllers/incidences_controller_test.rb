require 'test_helper'

class IncidencesControllerTest < ActionController::TestCase
  setup do
    @incidence = incidences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incidence" do
    assert_difference('Incidence.count') do
      post :create, incidence: { date: @incidence.date, description: @incidence.description, latitud: @incidence.latitud, longitud: @incidence.longitud, picture: @incidence.picture, reference: @incidence.reference, ticket: @incidence.ticket }
    end

    assert_redirected_to incidence_path(assigns(:incidence))
  end

  test "should show incidence" do
    get :show, id: @incidence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incidence
    assert_response :success
  end

  test "should update incidence" do
    patch :update, id: @incidence, incidence: { date: @incidence.date, description: @incidence.description, latitud: @incidence.latitud, longitud: @incidence.longitud, picture: @incidence.picture, reference: @incidence.reference, ticket: @incidence.ticket }
    assert_redirected_to incidence_path(assigns(:incidence))
  end

  test "should destroy incidence" do
    assert_difference('Incidence.count', -1) do
      delete :destroy, id: @incidence
    end

    assert_redirected_to incidences_path
  end
end
