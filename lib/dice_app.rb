class Dice
  attr_reader :score
  
  def initialize
    @roles = []
    @score = 0
  end
  
  def past_roles
    @roles.each{ |roll| puts "past role: #{roll.join(",")} \n"} 
  end
  
  def roll(num)
    arr = []
    num.times {arr << rand(6) +1    }
    @roles << arr
    @score += arr.sum
    return arr 
  end 
end

