# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#create our assert method
# create a string that states that if the assertion fails, raise that string that states that the assertion failed.  Unless we yield and the
# conditions are met and are true. 
# for line 14, we will recieve the raise error saying that the assertion failed and go out of the method and access the block to return the string 
#because the name does not equal billybob, yield comes back as false.

# 3. Copy your selected challenge here
class RPNCalculator
  def evaluate(input)
    array = input.split()
    operators = ["+", "*", "-", "/"]
    numbers = []
    array.each do |x|
      if operators.include?(x)
        int2 = numbers.pop().to_i 
        int1 = numbers.pop().to_i 
        result = int1 + int2 if x == "+"
        result = int1 - int2 if x == "-"
        result = int1 * int2 if x == "*"
        result = int1 / int2 if x == "/"
        numbers << result
      elsif x.to_i.is_a? Integer
        numbers << x 
      else 
         raise ArgumentError.new("This is a invalid input")
      end
    end
    numbers[0].to_i #result
   end
end

# 4. Convert your driver test code from that challenge into Assert Statements
def assert
	# if yield
	# 	puts "true"
	raise "Assertion failed" unless yield 
# end 
end

calc = RPNCalculator.new 
assert {calc.evaluate('70 10 +') == 80}
assert {calc.evaluate('10 5 -') == 5}
assert {calc.evaluate('20 5 /') == 4}
assert {calc.evaluate('4 10 *') == 40}
assert {calc.evaluate('70 10 4 + 5 * -') == 0} 


# 5. Reflection
# this seemed pretty straight forward.  What I don't understand is, why do we use assert when driver tests return true or false and
#I feel this is the same output because on IRB, the asserts don't return anything if everything yields.  I tried to play around
# with the yield method above by putting an if statement that if we yield(and the conditions comes back as true) that we puts "true" into the console
#this gave me the same outcome as the driver tests.  Otherwise, without that I get nothing. When I changed the values for the asserts, I got the string raised
# this is cool and is different than driver tests, but i still prefer seeing each test passed and returning true/false.  
# I went on codeacademy to get refreshed on yields and blocks.  So I feel i've gotten a good grasp of what this challenge wanted us to get out of it.