require 'test_helper'

class NightTest < ActiveSupport::TestCase
  fixtures :nights, :players, :nights_players
  
  test "night date must not be empty and have players" do
    night = Night.new
    assert night.invalid?
    assert night.errors[:date].any?
    assert night.errors[:players].any?
  end
  
  test "night players must not be 0" do
    night = nights(:no_players)
    
    assert night.invalid?
    assert_equal ["must have more than 0 players"],
      night.errors[:players]
  end
  
  test "night players must not be 1" do
    night = nights(:one)
    
    assert night.invalid?
    assert_equal ["must have more than 1 player"],
      night.errors[:players]
  end
  
  test "night players must be 2 or more" do  
    night = nights(:two)
    
    assert night.valid?,
      night.errors[:players]
  end
  
  test "night date must be unique" do
    night = Night.new(date: nights(:one).date)
    
    assert night.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
      night.errors[:date]
  end
  
end
