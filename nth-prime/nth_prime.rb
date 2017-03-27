class Prime

  attr_accessor :n
  attr_accessor :rollingSieve

  def self.nth(numberOfPrime)
    @n = numberOfPrime
    @rollingSieve = {}
    currentNumber = 2

    if @n < 1
      raise ArgumentError, 'There is no zeroth prime'
    end

    while @rollingSieve.length < @n do
      if !@rollingSieve.has_value?(currentNumber)
        @rollingSieve[currentNumber] = currentNumber
      end # if
      incrementRollingSieve(currentNumber)
      currentNumber += 1
    end # while

    return currentNumber - 1
  end # def nth

  def self.incrementRollingSieve(atNumber)
    @rollingSieve.each_pair do |prime, composite|
      if composite <= atNumber
        @rollingSieve[prime] = composite + prime
      end
    end # each_pair
  end # def incrementRollingSieve

end # class Prime

module BookKeeping
  VERSION = 1
end
