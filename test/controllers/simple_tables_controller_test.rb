require 'test_helper'

class SimpleTablesControllerTest < ActionController::TestCase
  setup do
    @simple_table = simple_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_table" do
    assert_difference('SimpleTable.count') do
      post :create, simple_table: { address: @simple_table.address, category_id: @simple_table.category_id, latitude: @simple_table.latitude, longitude: @simple_table.longitude, name: @simple_table.name, phone: @simple_table.phone, website: @simple_table.website }
    end

    assert_redirected_to simple_table_path(assigns(:simple_table))
  end

  test "should show simple_table" do
    get :show, id: @simple_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_table
    assert_response :success
  end

  test "should update simple_table" do
    patch :update, id: @simple_table, simple_table: { address: @simple_table.address, category_id: @simple_table.category_id, latitude: @simple_table.latitude, longitude: @simple_table.longitude, name: @simple_table.name, phone: @simple_table.phone, website: @simple_table.website }
    assert_redirected_to simple_table_path(assigns(:simple_table))
  end

  test "should destroy simple_table" do
    assert_difference('SimpleTable.count', -1) do
      delete :destroy, id: @simple_table
    end

    assert_redirected_to simple_tables_path
  end
end
