require 'test_helper'

class GameplayTest < ActiveSupport::TestCase
  fixtures :nights, :nights_players
  
  test "gameplay elements must not be empty" do
    gp = Gameplay.new
    assert gp.invalid?
    assert gp.errors[:night].any?
    assert gp.errors[:game].any?
  end
  
  test "gameplay finished must have winners" do
    gp = Gameplay.new
    gp.night = nights(:two)
    gp.game = Game.new(name: 'AH')

    gp.finished = true
    
    assert gp.invalid?
    assert_equal ["Game was finished but had no winners"],
      gp.errors[:finished]
      
    gp.winners << Player.new(name: 'Andy')
    assert gp.valid?
  end
  
  test "gameplay not finished must not have winners" do
    gp = Gameplay.new
    gp.night = nights(:two)
    gp.game = Game.new(name: 'AH')
    
    gp.finished = false
    gp.winners << Player.new(name: 'Andy')
    assert gp.invalid?
    assert_equal ["Game was not finsihed but had winners"],
      gp.errors[:finished]
      
  end
end
