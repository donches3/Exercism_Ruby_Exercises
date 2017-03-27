class Gigasecond

  def self.from(startTime)
    newTime = startTime
    newTime += 1000000000
    return newTime
  end # def from

end # class Gigasecond

module BookKeeping
  VERSION = 5
end
