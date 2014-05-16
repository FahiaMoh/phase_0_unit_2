# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# inputting a value to pad the indexes in an array with nil
# outputting the array + the Nil pads following in succession within the array which is the same number inputted
# 1. create a class Array 
# 2. define a method called pad that takes the parameter of num which will be the number that represents the padding in the array
# and the second parameter would be what would be outputted for the padding which is Nil 
# 3. create a counter variable that is equal to the num parameter and subtract it from the array you would have called self and its count
# 4. put a times on the counter so each if the counter is less than 0 return the self that has the padding value pushed into the array 
# 5. the pad method will share most similarities except there will be a map method on the self and this will equal to arr_destr
# which will prevent the method from being non-destructive 

# 2. Initial Solution
# class Array
    
#   def pad(num, padding = nil)
#     counter = num - self.count
#     arr_destr = self.map {|x| x}
#     counter.times {arr_destr << padding} if counter > 0
#            arr_destr 
#     end 
    
#     def pad!(num,padding = nil)
#         counter = num - self.count
#      if counter > 0
#         counter.times {self << padding}
#            self
#        else self
#         end
#     end
# end 
# 3. Refactored Solution
class Array

	def pad!(num,padding = nil)
        counter = num - self.count
        counter.times {self << padding} if counter > 0
           self
    end
end 
    
  def pad(num, padding = nil)
    counter = num - self.count
    arr_destr = self.map {|x| x}
    counter.times {arr_destr << padding} if counter > 0
           arr_destr 
    end 
    
    
# put the if statements in one line for both methods
# not sure what else I can do to compress the code anymore than it is at the moment

# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# I think a significant problem was actually knowing where to start with this particular challenge. I also didn't really know the distinctive differences
# between destructive and non-destructive methods and I initially made them the same
# I also had problems getting the last few tests to pass, the padded at the end of array test was a frustrating one and I had to take out my if statement
# and use the new variable i created using the map method
# it was frustrating because as far as I coudl tell it was running fine and I had to play aroudn with it and try different things and finally i figured out the 
# map method worked to pass the destructive test 

# What questions did you have while coding? What resources did you find to help you answer them?
# I always have the ruby docs open to narrow down what methods would work to help me get to a working solution

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I solidified my understanding with destructive and non-destructive methods after this exercise because the distinctive differences
# weren't as black and white as they are now
# I am also not sure on classes in ruby and need some more light shed on this topic 
# Did you learn any new skills or tricks?
# upon refactoring I learned to put the if statements in one line and that the push method didn't work as efficiently as the << method in this case

# How confident are you with each of the Learning Competencies?
# I think i've fully grasped the learning competencies of this challenge

# Which parts of the challenge did you enjoy?
# It's always a cool feeling to see all the tests pass with no failures and see that you have a working solution

# Which parts of the challenge did you find tedious?
# I think for me the tests that weren't passing were frustrating and tedious to figure out why because from my perspective it looked
# like everything was in working order and it didn't make sense why it wasn't passing 