require 'test_helper'

class BikepartsControllerTest < ActionController::TestCase
  setup do
    @bikepart = bikeparts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bikeparts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bikepart" do
    assert_difference('Bikepart.count') do
      post :create, bikepart: { description: @bikepart.description, image_url: @bikepart.image_url, product_name: @bikepart.product_name }
    end

    assert_redirected_to bikepart_path(assigns(:bikepart))
  end

  test "should show bikepart" do
    get :show, id: @bikepart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bikepart
    assert_response :success
  end

  test "should update bikepart" do
    patch :update, id: @bikepart, bikepart: { description: @bikepart.description, image_url: @bikepart.image_url, product_name: @bikepart.product_name }
    assert_redirected_to bikepart_path(assigns(:bikepart))
  end

  test "should destroy bikepart" do
    assert_difference('Bikepart.count', -1) do
      delete :destroy, id: @bikepart
    end

    assert_redirected_to bikeparts_path
  end
end
