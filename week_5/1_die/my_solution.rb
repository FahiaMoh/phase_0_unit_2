# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: input the number of sides on the die
# Output: if calling sides then we output the sides, if calling roll, we output the number between 1 and number of sides
# Steps: 
# create instance variable in the initialize method called sides 
# raise the arguementerror if the sides is less than 1
# return sides in the sides method
# in roll method, return roll and set it equal to the rand method with sides as it's parameter plus 1 


# 3. Initial Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("Number of sides must be greater than 0") if sides < 1
    @sides = sides
  end
  
  def sides
      @sides 
  end
  
  def roll
    @roll = 1 + rand(@sides)
  end
end
# 4. Refactored Solution
# I don't know how I can compress this more than it already is, it is DRY 





# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(5)
p die.sides > 1
p die.sides == 5

# 5. Reflection 
# I think the only trouble i had was trying to see how I could justify compressing this into something more succinct
# I still don't know where I can compress this or if it needs to be
#I also didn't really understand the arguementerror so i had to really research that as i kept getting that test to fail
#classes are getting to be clearer and I'm starting to understand their use and how to properly have them in a program 
# I think i've grasped the gist of the concepts and didn't have trouble with the overall challenge 
#Nothing was too tedious and I enjoyed tackling this challenge 