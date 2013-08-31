class CoopStats

  def initialize (wins)
    @game_wins = 0
    @player_wins = 0
    @traitor_wins = 0
    @scores = Array.new
    wins.each do |win|
      @scores << win.players_score
      if win.players_win
        @player_wins += 1 
      else
        @game_wins += 1
      end
    end 
  end

  def game_wins
    @game_wins
  end
  
  def player_wins
    @player_wins
  end
  
  def scores
    @scores
  end
  
  def high_score
    @scores[@scores.index(@scores.compact.max)]
  end
  
  def partial_name
    "win/coop_stats"
  end
end