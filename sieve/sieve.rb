class Sieve

  attr_accessor :n
  attr_accessor :rangeArray

  def initialize(endNum)
    @n = endNum
    @rangeArray = []
  end

  def markOffComposites(prime)
    j = 2 * prime
    while j <= @n
      @rangeArray[j] = false
      j += prime
    end
    return
  end # def markOffComposites

  def primes()
    primesArray = []

    if @n < 2
      return primesArray
    end

    for i in 2..@n
      @rangeArray[i] = true
    end

    for i in 2..@n
      if rangeArray[i]
        primesArray << i
        markOffComposites(i)
      end # if
    end # for

    return primesArray
  end # def primes

end # end class Sieve

module BookKeeping
  VERSION = 1
end
