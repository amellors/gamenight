require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @update = {
      title: 'new name',
      password: 'secret',
      password_confirmation: 'secret' 
    }
  end
  
  test "should redirect to login when loged out" do
    logout
    get :new
    assert_redirected_to login_url
    
    get :index
    assert_redirected_to login_url
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { name: 'sam', password: 'secret', password_confirmation: 'secret' }
    end
    assert_redirected_to users_path
  end
    
  test "should update user" do
    patch :update, id: @user, user: @update
    assert_redirected_to users_path
  end
end
