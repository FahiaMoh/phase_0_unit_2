# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: input will be an integer that will be the guessing number

# Output: outputting the guess if it is too high it will return :high, if low, :low, if correct, :correct
# the solved? method will output true if the correct guess is made, false otherwise.
# Steps: create two instance variables in initialize called @answer and @solve, solve will be set to false initially until the conditions are met
# the guess method will have the instance variable @guess declared as guess
# create an if/else statement that if @guess is greater than the answer, return :high and @solve = false
# if it's less than @answer, return :low and @solve = false
# if the @guess is correct and equal to @answer, @solve will then be equal to true meaning that the game is solved and return :correct
# the solved? method will return @solve 

# 3. Initial Solution
class GuessingGame
  def initialize(answer)
    @answer = answer 
    @solve = false 
  end
  
  def guess(guess)
  	@guess = guess 
      if @guess > @answer
      	@solve = false
  		:high
  	elsif @guess < @answer 
  		@solve = false 
  		:low 
  	elsif @guess == @answer 
  		@solve = true 
  		 :correct 
   	end 
  end 
  
  def solved?
      	@solve  
  end
end

# 4. Refactored Solution
# class GuessingGame
# attr_reader :guess 
#   def initialize(answer)
#     @answer = answer 
#     @solve = false
#   end

#   def guess(guess) 
#       if guess > @answer then :high && @solve = false  end
#       if guess < @answer then :low && @solve = false end
#       if guess == @answer then :correct && @solve = true end 
#   end 
  
#     def solved?
#         @solve 
#   end
# end



# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10)

game.solved? == false   
game.guess(5) == :low 
game.guess(20) == :high 
game.guess(10) == :correct
game.solved? == true 

# 5. Reflection 
# I had some troubles compressing the code, I left my incorrect refactored solution so that my thought process could be seen, 
# I tried to compress the if/else as you can see in the refactored, I wanted to just set @solve = true only when @answer == @guess 
# and otherwise just return @solve since it's false initially.  I kept getting errors and I tried to compress the last elsif with
# a shorter comparator which didn't seem to work but I hope my logic makes sense. 

# Looking at it now, the only problems I faced was the @solve in the if statements, I hated that I couldn't get around having it in each if/else 
#and it annoyed me that I couldn't make it cleaner and logical.  Overall the end result wasn't too hard to come by, I spent more time playing around 
# with my finished program to try to refactor it with failure but I feel that the failed code could show and give ideas so I left it up there instead of nothing.
# The last two challenges really helped make this challenge more straight forward and easier 
# I think i've grasped the learning compentencies pretty well as well as that I found this enjoyable.  