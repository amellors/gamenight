require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "player name must not be empty" do
    player = Player.new
    assert player.invalid?
    assert player.errors[:name].any?
  end
end
