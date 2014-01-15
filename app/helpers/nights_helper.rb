module NightsHelper
  def finishedCount
    tempCount = 0
    @night.gameplays.each do |gp|
      tempCount += 1 if gp.finished
    end
  end
  
  def resetGameplayCounter
    @count = 1
  end
  
  def gameplayCount
    @count
  end
  
  def incGameplayCount
    @count += 1
  end
end
