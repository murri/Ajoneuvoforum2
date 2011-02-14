require 'test_helper'

class IlmoitusControllerTest < ActionController::TestCase
  setup do
    @ilmoitu = ilmoitus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ilmoitus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ilmoitu" do
    assert_difference('Ilmoitu.count') do
      post :create, :ilmoitu => @ilmoitu.attributes
    end

    assert_redirected_to ilmoitu_path(assigns(:ilmoitu))
  end

  test "should show ilmoitu" do
    get :show, :id => @ilmoitu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ilmoitu.to_param
    assert_response :success
  end

  test "should update ilmoitu" do
    put :update, :id => @ilmoitu.to_param, :ilmoitu => @ilmoitu.attributes
    assert_redirected_to ilmoitu_path(assigns(:ilmoitu))
  end

  test "should destroy ilmoitu" do
    assert_difference('Ilmoitu.count', -1) do
      delete :destroy, :id => @ilmoitu.to_param
    end

    assert_redirected_to ilmoitus_path
  end
end
