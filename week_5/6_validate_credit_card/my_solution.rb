# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: input the 16 digit credit card number 
# Output: outputs either true or false depending on whether the card number inputted is valid.  If valid, true, else, false. 

# Steps:
 # create an itialize method that takes credit_number as a single parameter
 # set that instance variable equal to credit_number
 # raise an arguement error if the size is not equal to 16 digits
 # create a method called check_card
 # credit_number will equal its instance variable that will return an array of strings.  The map method will return the new array with the changes.
 # now we need to manipulate the indexes in order to get the luhn algorithm working
 # for each element in the index we will multiply it by two if the index number is evenly divisible.
 #now the credit_number variable will equal the array of strings but we will join them back together and return a new array with these changes.
 # we will now return true or false depending on if the input is a multiple of 10.  We will use the inject method and add the numbers together
 # if the total number is evenly divisible by 10, then the output will be true, else the outcome will be false.    

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

       def initialize(credit_number)
           @credit_number = credit_number
            raise ArgumentError.new("Card number cannot be more or less than 16 digits") if credit_number.to_s.size != 16  
        end     
    
	def check_card
    	credit_number = @credit_number.to_s.chars.map{|d| d.to_i}
    	credit_number.each_index do |index|
    	credit_number[index] = credit_number[index] * 2	if index % 2 == 0 
    	end
  		credit_number = credit_number.join.chars.map{|d| d.to_i}
		return true if credit_number.inject(:+) % 10 == 0
		return false if credit_number.inject(:+) % 10 != 0 
	end
end 



# 1. DRIVER TESTS GO BELOW THIS LINE
card_1 = CreditCard.new(4563960122001999)
card_2 = CreditCard.new(4563960122001991)
card_3 = CreditCard.new(4563320122003991)

p card_1.check_card == true	
p card_2.check_card == false 
p card_3.check_card == false 


# 5. Reflection 
# I found this challenge to be exceptionally hard and I had to do a lot of googling to really grasp the luhn algorithm and figure out how to really go about this challenge
# I definitely think pairing would've helped the initial confusion of where to start or how to tackle the challenge. 
# I think i've grasped the concepts for the most part.  
# The biggest issue for me was grasping the steps 1-3 and translating that into code 
# I think this was a really hard challlenge, I spent a lot of time working on it and it was really different than the other challenges
# this week 