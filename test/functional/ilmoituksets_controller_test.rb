require 'test_helper'

class IlmoituksetsControllerTest < ActionController::TestCase
  setup do
    @ilmoitukset = ilmoituksets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ilmoituksets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ilmoitukset" do
    assert_difference('Ilmoitukset.count') do
      post :create, :ilmoitukset => @ilmoitukset.attributes
    end

    assert_redirected_to ilmoitukset_path(assigns(:ilmoitukset))
  end

  test "should show ilmoitukset" do
    get :show, :id => @ilmoitukset.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ilmoitukset.to_param
    assert_response :success
  end

  test "should update ilmoitukset" do
    put :update, :id => @ilmoitukset.to_param, :ilmoitukset => @ilmoitukset.attributes
    assert_redirected_to ilmoitukset_path(assigns(:ilmoitukset))
  end

  test "should destroy ilmoitukset" do
    assert_difference('Ilmoitukset.count', -1) do
      delete :destroy, :id => @ilmoitukset.to_param
    end

    assert_redirected_to ilmoituksets_path
  end
end
