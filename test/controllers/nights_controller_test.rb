require 'test_helper'

class NightsControllerTest < ActionController::TestCase
  setup do
    @night = nights(:one)
    @update = {
      date: '2012-12-31', player_ids: ["1","2"]
    }
    @bad_update = {
      date: nights(:two).date
    }
  end
  
  test "should redirect to login when loged out" do
    logout
    get :new
    assert_redirected_to login_url
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nights)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create night" do
    assert_difference('Night.count') do
      post :create, night: { date: '2013-02-01', player_ids: ["1","2"] }
    end
    assert_redirected_to nights_path
  end
    
  test "should update night" do
    patch :update, id: @night, night: @update
    assert_redirected_to night_path(@night)
  end
  
  test "should not update night" do
    patch :update, id: @night, night: @bad_update
    assert_template :edit
  end
end
