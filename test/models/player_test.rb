require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  fixtures :players
  # test "the truth" do
  #   assert true
  # end
  test "player name must not be empty" do
    player = Player.new
    assert player.invalid?
    assert player.errors[:name].any?
    
    player.name = "New Player"
    assert player.valid?
  end
  
  test "player name must be unique" do
    player = Player.new
    player.name = players(:one).name
    
    assert player.invalid?
    assert player.errors[:name].any?
  end
end
