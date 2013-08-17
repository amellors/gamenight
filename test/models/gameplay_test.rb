require 'test_helper'

class GameplayTest < ActiveSupport::TestCase
  fixtures :nights, :nights_players
  
  test "gameplay elements must not be empty" do
    gp = Gameplay.new
    assert gp.invalid?
    assert gp.errors[:night].any?
    assert gp.errors[:game].any?
  end
  
  test "gameplay players must be more than 1" do
    gp = Gameplay.new
    gp.night = nights(:two)
    gp.game = Game.new(name: 'AH')

    assert gp.invalid?
    assert_equal ["Game cannot be played with less than 1 player"],
      gp.errors[:players]
      
    gp.players << Player.new(name: 'Andy')
    assert gp.valid?
  end
end
