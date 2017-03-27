class Squares

  attr_accessor :num

  def initialize(number)
    @num = number
  end # def initialize

  def square_of_sum()
    sum = 0
    for i in 1..@num
      sum += i
    end
    return sum * sum
  end # square_of_sum

  def sum_of_squares()
    sum = 0
    for i in 1..@num
      sum += (i * i)
    end
    return sum
  end # sum_of_squares

  def difference()
    return square_of_sum() - sum_of_squares()
  end # difference

end # class Squares

module BookKeeping
  VERSION = 3
end
