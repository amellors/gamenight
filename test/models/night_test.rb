require 'test_helper'

class NightTest < ActiveSupport::TestCase
  
  test "night date must not be empty and have players" do
    night = Night.new
    assert night.invalid?
    assert night.errors[:date].any?
    assert night.errors[:players].any?
  end
  
  test "night players must not be 0" do
    night = Night.new(date: '2012-01-01')
    
    assert night.invalid?
    assert_equal ["must have more than 0 players"],
      night.errors[:players]
  end
  
  test "night players must not be 1" do
    night = Night.new(date: '2012-01-01')
    night.players << Player.new(name: 'Andy')
    
    assert night.invalid?
    assert_equal ["must have more than 1 player"],
      night.errors[:players]
  end
  
  test "night players must be 2 or more" do  
    night = Night.new(date: '2012-01-01')
    night.players << Player.new(name: 'Andy')
    night.players << Player.new(name: 'Corey')
    
    assert night.valid?,
      night.errors[:players]
  end
  
  test "night date must be unique" do
    night = Night.new(date: nights(:one).date)
    
    assert night.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
      night.errors[:date]
  end
  
  test "night date must be a date" do
    night = Night.new(date: '2012-01-01')
    night.players << Player.new(name: 'Andy')
    night.players << Player.new(name: 'Corey')
    
    assert night.valid?
    
    night.date = 'Andy'   
    assert night.invalid?
    
    night.date = '01-01-2013'   
    assert night.invalid?
  end
  
end
