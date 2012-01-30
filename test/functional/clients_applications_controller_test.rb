require 'test_helper'

class ClientsApplicationsControllerTest < ActionController::TestCase
  setup do
    @clients_application = clients_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clients_application" do
    assert_difference('ClientsApplication.count') do
      post :create, clients_application: @clients_application.attributes
    end

    assert_redirected_to clients_application_path(assigns(:clients_application))
  end

  test "should show clients_application" do
    get :show, id: @clients_application.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clients_application.to_param
    assert_response :success
  end

  test "should update clients_application" do
    put :update, id: @clients_application.to_param, clients_application: @clients_application.attributes
    assert_redirected_to clients_application_path(assigns(:clients_application))
  end

  test "should destroy clients_application" do
    assert_difference('ClientsApplication.count', -1) do
      delete :destroy, id: @clients_application.to_param
    end

    assert_redirected_to clients_applications_path
  end
end
