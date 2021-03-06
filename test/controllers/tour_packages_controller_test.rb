require 'test_helper'

class TourPackagesControllerTest < ActionController::TestCase
  setup do
    @tour_package = tour_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_package" do
    assert_difference('TourPackage.count') do
      post :create, tour_package: { detail: @tour_package.detail, duration: @tour_package.duration, package_name: @tour_package.package_name, price: @tour_package.price }
    end

    assert_redirected_to tour_package_path(assigns(:tour_package))
  end

  test "should show tour_package" do
    get :show, id: @tour_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_package
    assert_response :success
  end

  test "should update tour_package" do
    patch :update, id: @tour_package, tour_package: { detail: @tour_package.detail, duration: @tour_package.duration, package_name: @tour_package.package_name, price: @tour_package.price }
    assert_redirected_to tour_package_path(assigns(:tour_package))
  end

  test "should destroy tour_package" do
    assert_difference('TourPackage.count', -1) do
      delete :destroy, id: @tour_package
    end

    assert_redirected_to tour_packages_path
  end
end
