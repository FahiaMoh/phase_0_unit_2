# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# create a method called median that takes an array as a parameter and inputs the an array
# the code will return the median element of any array that's inputted 
# define a method called median with an array as the paramater
# sort the array to ensure that the elements are properly sorted for string arrays
# create an if statement that says if the length of the array is even
# return the array and divide it by 2 then add the divisible array and subtract 2
# else you will return the array length divided by 2 


# 2. Initial Solution
def median(array)
	array.sort! 
    if array.length.even?
    return (array[array.length/2] + array[(array.length/2)-1])/2.0
else
    return array[array.length/2]
end 
end 
# 3. Refactored Solution
# There's not really a way for me to compress the code any more than what it is here
# I can't put it in one line 



# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# Trying to get the logic of the problem to work proved to be a bit tricky and I had to do fiddle around with documentation and
# look up online how to go about the logical part of this problem
# What questions did you have while coding? What resources did you find to help you answer them?
# The biggest question I had was how I could find the median of a string array and just getting the logic correct

# Did you learn any new skills or tricks?
# I learned a new way to implement the .even? in an if statement 
# How confident are you with each of the Learning Competencies?
# I think i've gotten a fair grasp on the learning competencies 

# Which parts of the challenge did you enjoy?
# Learning new ways to go about this problem was fun, I found there was hundreds of ways to go about it
# Which parts of the challenge did you find tedious?
# Nothing came off as tedious in this challenge 