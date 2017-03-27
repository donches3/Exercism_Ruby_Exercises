class Hamming
  def self.compute(str1, str2)

    if str1.length == str2.length

      hamm = 0

      0.upto (str1.length - 1) do |index|
        if str1[index] != str2[index]
          hamm += 1
        end
      end # upto

      return hamm

    else
      # not equal length
      # raise error
      raise ArgumentError, 'Not equal length'
    end

  end # def compute
end # class Hamming

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
