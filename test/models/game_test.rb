require 'test_helper'

class GameTest < ActiveSupport::TestCase
  fixtures :games
  # test "the truth" do
  #   assert true
  # end
  test "game name must not be empty" do
    game = Game.new
    assert game.invalid?
    assert game.errors[:name].any?
    
    game.name = "new game"
    assert game.valid?
  end
  
  test "game name must be unique" do
    game = Game.new
    game.name = games(:one).name
    
    assert game.invalid?
    assert game.errors[:name].any?
  end
end
