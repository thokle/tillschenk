require 'test_helper'

class AboutTillsControllerTest < ActionController::TestCase
  setup do
    @about_till = about_tills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_tills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_till" do
    assert_difference('AboutTill.count') do
      post :create, :about_till => { :about => @about_till.about, :pic => @about_till.pic }
    end

    assert_redirected_to about_till_path(assigns(:about_till))
  end

  test "should show about_till" do
    get :show, :id => @about_till
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @about_till
    assert_response :success
  end

  test "should update about_till" do
    put :update, :id => @about_till, :about_till => { :about => @about_till.about, :pic => @about_till.pic }
    assert_redirected_to about_till_path(assigns(:about_till))
  end

  test "should destroy about_till" do
    assert_difference('AboutTill.count', -1) do
      delete :destroy, :id => @about_till
    end

    assert_redirected_to about_tills_path
  end
end
