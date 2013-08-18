require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
    @update = {
      name: 'new game',
    }
    @bad_update = {
      name: games(:two).name
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
    assert_not_nil assigns(:games)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { name: 'new game' }
    end
    assert_redirected_to games_path
  end
    
  test "should update game" do
    patch :update, id: @game, game: @update
    assert_redirected_to game_path(@game)
  end
  
  test "should not update game" do
    patch :update, id: @game, game: @bad_update
    assert_template :edit
  end
end
