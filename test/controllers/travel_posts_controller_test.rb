require 'test_helper'

class TravelPostsControllerTest < ActionController::TestCase
  setup do
    @travel_post = travel_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_post" do
    assert_difference('TravelPost.count') do
      post :create, travel_post: { content: @travel_post.content, title: @travel_post.title, writer: @travel_post.writer }
    end

    assert_redirected_to travel_post_path(assigns(:travel_post))
  end

  test "should show travel_post" do
    get :show, id: @travel_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_post
    assert_response :success
  end

  test "should update travel_post" do
    patch :update, id: @travel_post, travel_post: { content: @travel_post.content, title: @travel_post.title, writer: @travel_post.writer }
    assert_redirected_to travel_post_path(assigns(:travel_post))
  end

  test "should destroy travel_post" do
    assert_difference('TravelPost.count', -1) do
      delete :destroy, id: @travel_post
    end

    assert_redirected_to travel_posts_path
  end
end
