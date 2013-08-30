class ResistanceStats

  def initialize (wins)
    @wins = wins
    @resistance_wins = 0
    @spy_wins = 0
    wins.each do |win|
      @resistance_wins += 1 if win.resistance_win
      @spy_wins += 1 if win.spies_win
    end 
  end

  def res_wins
    @resistance_wins
  end
  
  def spy_wins
    @spy_wins
  end

  def partial_name
    "win/resistance_stats"
  end
end