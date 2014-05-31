# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
# class CreditCard
#   def initialize(card_num)
#     @card = card_num.to_s.chars.map(&:to_i)
#     unless @card.size == 16
#       raise ArgumentError.new("Please enter a 16 digit card number")
#     end
#   end
#   def double_digit
#   	@card.map!.with_index do |e,i|
#       if i.even? == true
#         e * 2
#       else
#       	e
#       end
#   	end 
#   end
#   def card_sum
#   	double_digit
#   	@card.join.chars.map(&:to_i).reduce(:+)
#   end
#   def check_card
#     if card_sum % 10 == 0
#       true
#     else
#       false
#   	end
#   end
# end
# Refactored Solution
class CreditCard
  def initialize(card_num)
    @card = card_num.to_s.chars.map(&:to_i)
    raise ArgumentError.new("Card number cannot be more or less than 16 digits") if card_num.to_s.size != 16  
  end

 def check_card
    double_digit = @card.map!.with_index { |e,i| i.even? == true ? e*2 : e }
    card_sum = @card.join.chars.map(&:to_i).reduce(:+)
    card_sum % 10 == 0 ? true : false
  end

end 

# DRIVER TESTS GO BELOW THIS LINE
card_1 = CreditCard.new(4563960122001999)
card_2 = CreditCard.new(4563960122001991)
card_3 = CreditCard.new(4563322022003191)

p card_1.check_card == true	
p card_2.check_card == false 
p card_3.check_card == false 



# Reflection 

# I tried to mirror my refactored solution.  What I did was take the extra methods in the initial solution and tried fitting it into the check_card method
#this seems the easiest way to refactor and clean up the initial solution.  This worked really well and it shorted the solution a lot.  
