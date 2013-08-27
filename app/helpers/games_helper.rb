module GamesHelper
  def getWinTypes
    { "Normal Game" => "normal_win",
      "Score Game" => "score_win",
      "Co-op Game" => "coop_win",
      "Resistance Game" => "resistance_win"
    }
  end
end
