require 'test_helper'

class StickeyAdvertisementsControllerTest < ActionController::TestCase
  setup do
    @stickey_advertisement = stickey_advertisements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stickey_advertisements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stickey_advertisement" do
    assert_difference('StickeyAdvertisement.count') do
      post :create, stickey_advertisement: { category: @stickey_advertisement.category }
    end

    assert_redirected_to stickey_advertisement_path(assigns(:stickey_advertisement))
  end

  test "should show stickey_advertisement" do
    get :show, id: @stickey_advertisement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stickey_advertisement
    assert_response :success
  end

  test "should update stickey_advertisement" do
    patch :update, id: @stickey_advertisement, stickey_advertisement: { category: @stickey_advertisement.category }
    assert_redirected_to stickey_advertisement_path(assigns(:stickey_advertisement))
  end

  test "should destroy stickey_advertisement" do
    assert_difference('StickeyAdvertisement.count', -1) do
      delete :destroy, id: @stickey_advertisement
    end

    assert_redirected_to stickey_advertisements_path
  end
end
