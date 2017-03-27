class Year

  def self.leap?(dateYear)
    leap = false
    if dateYear % 4 == 0
      leap = true
      if dateYear % 100 == 0
        leap = false
        if dateYear % 400 == 0
          leap = true
        end
      end
    end
    return leap
  end # def leap?

end # class Year

module BookKeeping
  VERSION = 2
end
