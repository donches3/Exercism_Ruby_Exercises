class Pangram

  def self.pangram?(phrase)
    phrase = phrase.downcase

    ('a'..'z').each do |letter|
      if !(phrase.include?(letter))
        return false
      end
    end # each do

    return true
  end # def pangram?

end # class Pangram

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
