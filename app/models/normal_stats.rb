class NormalStats

  def initialize (wins)
    @wins = wins
    @winner_count = Hash.new
    @wins.each do |win|
      if @winner_count[win.winner.name]
        @winner_count[win.winner.name] += 1
      else
        @winner_count[win.winner.name] = 1
      end
    end
    # @winner_count = @winner_count.sort {|a,b| b[1]<=>a[1]}
  end
  
  def players
    @winner_count.map { |each| each[0] }
  end
  
  def scores
    @winner_count.map { |each| each[1] }
  end
  
  def partial_name
    "win/normal_stats"
  end
end