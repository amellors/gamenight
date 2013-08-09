require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "game name must not be empty" do
    game = Game.new
    assert game.invalid?
    assert game.errors[:name].any?
  end
end
