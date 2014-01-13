require 'test_helper'

class ChinchillasControllerTest < ActionController::TestCase
  setup do
    @chinchilla = chinchillas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chinchillas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chinchilla" do
    assert_difference('Chinchilla.count') do
      post :create, chinchilla: {  }
    end

    assert_redirected_to chinchilla_path(assigns(:chinchilla))
  end

  test "should show chinchilla" do
    get :show, id: @chinchilla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chinchilla
    assert_response :success
  end

  test "should update chinchilla" do
    patch :update, id: @chinchilla, chinchilla: {  }
    assert_redirected_to chinchilla_path(assigns(:chinchilla))
  end

  test "should destroy chinchilla" do
    assert_difference('Chinchilla.count', -1) do
      delete :destroy, id: @chinchilla
    end

    assert_redirected_to chinchillas_path
  end
end
