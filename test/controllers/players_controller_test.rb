require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
    @update = {
      name: 'Andy'
    }
    @bad_update = {
      name: players(:two).name
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
    assert_not_nil assigns(:players)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { name: 'New Player' }
    end
    assert_redirected_to players_path
  end
    
  test "should update player" do
    patch :update, id: @player, player: @update
    assert_redirected_to player_path(@player)
  end
  
  test "should not update player" do
    patch :update, id: @player, player: @bad_update
    assert_template :edit
  end
end
