module NightsHelper
  def finishedCount
    tempCount = 0
    @night.gameplays.each do |gp|
      tempCount += 1 if gp.finished
    end
  end
end
