require 'test_helper'

class SouvenirsControllerTest < ActionController::TestCase
  setup do
    @souvenir = souvenirs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:souvenirs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create souvenir" do
    assert_difference('Souvenir.count') do
      post :create, souvenir: { address: @souvenir.address, name: @souvenir.name, phone: @souvenir.phone, souvenir_type: @souvenir.souvenir_type }
    end

    assert_redirected_to souvenir_path(assigns(:souvenir))
  end

  test "should show souvenir" do
    get :show, id: @souvenir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @souvenir
    assert_response :success
  end

  test "should update souvenir" do
    patch :update, id: @souvenir, souvenir: { address: @souvenir.address, name: @souvenir.name, phone: @souvenir.phone, souvenir_type: @souvenir.souvenir_type }
    assert_redirected_to souvenir_path(assigns(:souvenir))
  end

  test "should destroy souvenir" do
    assert_difference('Souvenir.count', -1) do
      delete :destroy, id: @souvenir
    end

    assert_redirected_to souvenirs_path
  end
end
