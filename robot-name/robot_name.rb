class Robot

  @@all_robot_names =[]

  attr_reader :name

  def initialize
    @name = random_robot_name_generator
  end

  def reset
    @name = random_robot_name_generator
  end

  def random_robot_name_generator
    letters = ('A'..'Z').to_a
    robot_name = letters.sample + letters.sample + rand(10).to_s + rand(10).to_s + rand(10).to_s

    if @@all_robot_names.include? robot_name
      # recursive call
      robot_name = random_robot_name_generator
    else
      @@all_robot_names << robot_name
    end

    return robot_name
  end # def random_robot_name_generator

end # class Robot

module BookKeeping
  VERSION = 2
end
