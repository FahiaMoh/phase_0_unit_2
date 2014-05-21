# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: The input is the string array 
# Output: the output will either recieve a int value for the sides if we call the sides method on the die,
# we will get a random string element in the string array if we call the roll method on die.
# Steps:
# create an instance variable called labels and set it equal to labels
# raise an arguementerror that returns a string if labels is empty 
# return the instance variable labels and have the length method called on it in the sides method
# return the labels instance variable inthe roll method with .sample caleld on it


# 3. Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Cannot be empty, must be greater than 0") if labels == []
    @labels = labels
    
  end
  
  def sides
      @labels.length 
  end

  def roll
     @labels.sample
  end
end



# 4. Refactored Solution
# I think this code is DRY and I do not see a way of compressing it any more than it is at the moment.  





# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides == 3
die.roll





# 5. Reflection 
# This challenge mirrored the last one with the difference being it was dealing with strings so i dind't have any trouble with this besides
# the sample and length methods were throwing me off 
# similar problem though was trying to think of a way to compress it as they are really similar 

# I understand this challenge and grasped the learning competencies but I felt like the spin on strings could've been one challenge with two parts
# instead of two different challenges 
# Same as the previous challenge, I didn't find anything tedious and it was rather straight forward besides the sample and length methods that 
# took a little bit of playing around with to get the tests to pass 