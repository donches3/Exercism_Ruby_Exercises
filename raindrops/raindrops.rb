class Raindrops
  def self.convert(num)

    pl_ngs = ''

    if num % 3 == 0
      pl_ngs << "Pling"
    end
    if num % 5 == 0
      pl_ngs << "Plang"
    end
    if num % 7 == 0
      pl_ngs << "Plong"
    end

    if pl_ngs == ''
      return num.to_s
    else
      return pl_ngs
    end

  end # def convert
end # class Raindrops

module BookKeeping
  VERSION = 3
end
