require 'test_helper'

class DustBathsControllerTest < ActionController::TestCase
  setup do
    @dust_bath = dust_baths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dust_baths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dust_bath" do
    assert_difference('DustBath.count') do
      post :create, dust_bath: {  }
    end

    assert_redirected_to dust_bath_path(assigns(:dust_bath))
  end

  test "should show dust_bath" do
    get :show, id: @dust_bath
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dust_bath
    assert_response :success
  end

  test "should update dust_bath" do
    patch :update, id: @dust_bath, dust_bath: {  }
    assert_redirected_to dust_bath_path(assigns(:dust_bath))
  end

  test "should destroy dust_bath" do
    assert_difference('DustBath.count', -1) do
      delete :destroy, id: @dust_bath
    end

    assert_redirected_to dust_baths_path
  end
end
