require 'test_helper'

class BootstrapsControllerTest < ActionController::TestCase
  setup do
    @bootstrap = bootstraps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bootstraps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bootstrap" do
    assert_difference('Bootstrap.count') do
      post :create, bootstrap: { fname: @bootstrap.fname, lname: @bootstrap.lname, rating: @bootstrap.rating, title: @bootstrap.title }
    end

    assert_redirected_to bootstrap_path(assigns(:bootstrap))
  end

  test "should show bootstrap" do
    get :show, id: @bootstrap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bootstrap
    assert_response :success
  end

  test "should update bootstrap" do
    patch :update, id: @bootstrap, bootstrap: { fname: @bootstrap.fname, lname: @bootstrap.lname, rating: @bootstrap.rating, title: @bootstrap.title }
    assert_redirected_to bootstrap_path(assigns(:bootstrap))
  end

  test "should destroy bootstrap" do
    assert_difference('Bootstrap.count', -1) do
      delete :destroy, id: @bootstrap
    end

    assert_redirected_to bootstraps_path
  end
end
