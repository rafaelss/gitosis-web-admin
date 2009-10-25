require 'test_helper'

class PublicKeysControllerTest < ActionController::TestCase

  def setup
    @public_key ||= Factory(:public_key)
  end

  should "test create with and withoud @repository"

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_key" do
    assert_difference('PublicKey.count') do
      post :create, :public_key => Factory.attributes_for(:public_key)
    end

    assert_redirected_to public_key_path(assigns(:public_key))
  end

  test "should show public_key" do
    get :show, :id => @public_key.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @public_key.to_param
    assert_response :success
  end

  test "should update public_key" do
    put :update, :id => @public_key.to_param, :public_key => Factory.attributes_for(:public_key)
    assert_redirected_to public_key_path(assigns(:public_key))
  end

  test "should destroy public_key" do
    assert_difference('PublicKey.count', -1) do
      delete :destroy, :id => @public_key.to_param
    end

    assert_redirected_to public_keys_path
  end
end