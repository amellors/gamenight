require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @player = players(:one)
    @update = {
      name: 'Andy'
    }
  end
  
  test "shoud get index" do
    get :index
    # assert_response :suceess
    # assert_non_nil assigns(:players)
  end
end
