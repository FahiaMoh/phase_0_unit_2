# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Patrick Reynolds 



# Our Refactored Solution
def bakery_num( num_of_people, fav_food ) # defines a method called bakery_num that takes two parameters, num_of_peope, fav_food
  serving_sizes = { "pie" => 8, "cake" => 6, "cookie" => 1 } # Hash of available foods and associated counts
  food_quantities = { "fav_food" => 0, "pie" => 0, "cake" => 0, "cookie" => 0 } # Hash of food quantities

  # Raise error if serving sizes doesn't contain food
  raise ArgumentError.new("You can't make that food") if !serving_sizes.has_key? (fav_food)

  # Returns the necessary number of food items needed to satisfy each serving if the 
  # number of people attending is evenly divisible by the quantity of the passed favorite food.
  return "You need to make #{num_of_people / serving_sizes[fav_food]} #{fav_food}(s)." if num_of_people % serving_sizes[fav_food] == 0

  # Loop through each key in food_quantities to determine how many of each food item is needed.
  food_quantities.each do |key, value|
    if key == "fav_food" 
      food_quantities[key] = num_of_people / serving_sizes[fav_food] # Setting "fav_food" property for future use in food_quantities
      food_quantities[fav_food] = food_quantities[key]
      num_of_people = num_of_people % serving_sizes[fav_food] # Setting remaining amount of people left after fav_food is determined.
    elsif num_of_people / serving_sizes[key] > 0 # key is not fav_food and number of remaining people divided by the next food item serving size is greater than zero
      food_quantities[key] = num_of_people / serving_sizes[key] # Setting count for additional food items needed for remaining people
      num_of_people = num_of_people % serving_sizes[key] # Setting number of remaining people after the additional food item
    end # Ending conditional
  end # Ending .each loop

  return "You need to make #{food_quantities["pie"]} pie(s), #{food_quantities["cake"]} cake(s), and #{food_quantities["cookie"]} cookie(s)."
end # Closing bakery_num





#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 5 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
# This was a pretty tricky challenge to work through.  Patrick was great to work with and was incredibly helpful in helping me understand each step.
# I had a great session and took a lot from it and it was a great learning experience.  I felt we communicated well and we always bounced around ideas 
# in trying to figure out how to refactor the code.  


