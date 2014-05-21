# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

Inputting an integer value that will come back as a string with a comma if it is greater than 999
1. create a method called separate_comma that passes num as a parameter
2. in order to get a string value, set num to a new string value
3. create an if statement that states if the length of the string value is less than 4 to just return it as a regular string with no Commas
4. if it is less than 7 digits, return the string value with one comma on the position of -4
5. for the value of a million, set the string value equal to 7 and return the commas on positions, -7 and -4
6.  for values less than 10(but greater than 7) return commas on the same positions as above

# 2. Initial Solution
def separate_comma(num)
    num_string = num.to_s
  if num_string.length < 4
    return num_string
    elsif num_string.length < 7
    return num_string.insert(-4,",")
    elsif num_string.length == 7
    return num_string.insert(-7,",") && num_string.insert(-4,",")
    elsif num_string.length < 10
    return num_string.insert(-7,",") && num_string.insert(-4,",")
end 
end 

# 3. Refactored Solution
def separate_comma(num)
	num_string = num.to_s
	if num_string.length < 4 
        num_string 
    elsif  4<= num_string.length && num_string.length< 7
        num_string.insert(-4, ",") 
	elsif 7<= num_string.length && num_string.length <= 10
    num_string.insert(-7, ",") && num_string.insert(-4, ",") 
end
end  
# I took the returns out of the code because I found that in the if statement it wasn't necessary to have the return put in
# I also put the comparators on one line instead of splitting it into 3 elsifs i made them into two clearer ones with &&
# I'm not sure how else I could go  about making it shorter and cleaner

# driver test code 
separate_comma(123) == "123"  # => true
separate_comma(123456) == "123,456" # => true
separate_comma(0)      == "0" 		# => true
separate_comma(123456789) == "123,456,789" # => true 



# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# I faced lots of problems in this challenge because I tried to do so many things all at once and it was not working
# I forgot to change it to a string value so I did a method with ranges like 0..3 and it wasn't coming out right because I was using integers and not string values
# after taking a break I realized that i had to convert it to a string value and I was overthinking it and just put an if else statement comparing the digits

# What questions did you have while coding? What resources did you find to help you answer them?
# I tried really hard not to look at anything since this was a solo challenge but I had to peek at the ruby docs multiple times to find something
# that could help me add a comma into the string value, and I found many things that could possibly work that ultimately failed(push,gsub,etc) and none of these
# did what I needed them to do and the asked to not use reg exp so I couldn't go about it like that.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I think my biggest problem was overthinking this whole challenge, I took it and tried to do too much and it got really frustrating and
# after taking a long(much needed) break I realized it was a lot more simpler than I thought and I coudl simply put it in an if else statement and use comparators

# Did you learn any new skills or tricks?
# taking a look at the ruby docs and seeing the many ways to go about this challenge I learned lots of types of regexp that I could utilize
# for other challenges in the future like gsub or split and other things that affect a string and integers.  I found that the .insert method worked
# far better than a push method because I could manipulate the positioning of what I was putting into the element and the #push didn't give me that and
# didn't work on strings whereas the #gsub dind't work on string values 

# How confident are you with each of the Learning Competencies?
# I think through the struggling I grasped the concepts and really took my time going through this and making sure every little thing was registering
# and I made sure everything I grasped was concrete

# Which parts of the challenge did you enjoy?
# I enjoyed the end of the challenge when all my driver tests were coming up as true and I realized my efforts finally brought about 
# a working functional(not pretty) solution.

# Which parts of the challenge did you find tedious?
# nothing was tedious, just frustrating and challenging but this wasn't negative. I liked that I was stumped and had to take a break
# and re-assess the issue. 