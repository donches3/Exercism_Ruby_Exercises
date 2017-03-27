class Complement
  def self.of_dna(strandDNA)
    strandRNA = ''

    0.upto (strandDNA.length - 1) do |index|
        case strandDNA[index]
          when "A"
            strandRNA << "U"
          when "C"
            strandRNA << "G"
          when "G"
            strandRNA << "C"
          when "T"
            strandRNA << "A"
          else
            return ''
        end # case
    end # upto do

    return strandRNA

  end # def of_dna
end # class Complement

module BookKeeping
  VERSION = 4
end
