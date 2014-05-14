# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# the method should take an array of numbers and return the sum 
# create a method that takes elements in array and 
# puts them into a sentence without the commas in between them

# The output should be the arrays sum should be displayed on the console and the sentence
# array should be displayed without commas in between and the first letter capitalized with a period at the end of the array.
# What are the steps needed to solve the problem?
# first make a method called that takes a parameter
# total should equal the .inject element on the parameter to display the sum in an array
# for sentence_maker we make a method that takes sentence as a paramenter
# to join the sentences together we use the .join call and put " " to space out the words evenly so it looks like a 
# proper sentence and this is passed in parantheses on the .join 
# push a period at the end of the array and capitalize the first letter of the string in the array

# 2. Initial Solution
def total(array)
total = array.inject(:+)
end 

def sentence_maker(sentence)
sentence_maker = sentence.join(" ")
sentence_maker.capitalize!
sentence_maker << "."
end 

# 3. Refactored Solution
def sentence_maker(sentence)
	sentence_maker = sentence.join(" ").capitalize! << "."
end 
# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# I had to look at the ruby documentation to make sure I was using the right method to push an element to an array or inject
# What questions did you have while coding? What resources did you find to help you answer them?
# I used the ruby documentations to revisit and make sure I was using the right calls 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I kept thinking that ruby had a .push method but I learned that I can use << instead
# Did you learn any new skills or tricks?
# When I was refactoring I had no idea i could put it all on one line like that and it seems so much cleaner and efficient
# How confident are you with each of the Learning Competencies?
# I am confident with the learning competencies
# Which parts of the challenge did you enjoy?
# I like Ruby so most of this weeks stuff will be enjoyable and nothing was really tedious
# Which parts of the challenge did you find tedious?