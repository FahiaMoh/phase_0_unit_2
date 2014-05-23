# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)
# 2)

 # This is the file you should end up editing. 
 
def bakery_num( num_of_people, fav_food ) # defines a method called bakery_num that takes two parameters, num_of_peope, fav_food
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # Hash of avaialble foods and associated counts
  
  pie_qty = 0
  cake_qty = 0           # quantity of the foods equals to 0 
  cookie_qty = 0
  
  has_fave = false # Initializes our has_fave tood to false

  my_list.each_key do |key| # iterating over my_list keys to do a comparison 
    if key == fav_food # Favorite food comparison
      has_fave = true # confirms fav_food is in the list 
    end
  # has_fave = true if key == fav_food
  end
  
  if has_fave == false # my_list does not contain fav_food  
    raise ArgumentError.new("You can't make that food") # Raise error if fav_food was not found
  else # Fav_food was in the list
    fav_food_qty = my_list[fav_food] #.values_at(fav_food)[0] # if in the list, return the quantity on hand *** refactor
    if num_of_people % fav_food_qty == 0 # Checks if num_of_people is evenly divisable by the fav_food_qty
      num_of_food = num_of_people / fav_food_qty # returns num_of_food eq to number of people / fav foods 
      return "You need to make #{num_of_food} #{fav_food}(s)." # Return favorite food along with quantity
    else #num_of_people % fav_food_qty != 0 # num_of_people was not evenly divisable by fav_food_qty
      while num_of_people > 0 # while num_of_people is greater than zero 
        if num_of_people / my_list["pie"] > 0 # At least more people than the quantity of pie will feed 
          pie_qty = num_of_people / my_list["pie"] # quantity of pie is equal the number of people divided by my_list of pie 
          num_of_people = num_of_people % my_list["pie"] # number of people ramaining after distributing pies
        elsif num_of_people / my_list["cake"] > 0 # At least more people than the quantity of cake 
          cake_qty = num_of_people / my_list["cake"] # quantity of cake is equal to the number of people divided by qty of people cake will feed
          num_of_people = num_of_people % my_list["cake"] # number of people remaining after distributing cakes 
        else # num_of_people is less than both qty that pie and cake will feed
          cookie_qty = num_of_people # cookie quantity is equal to the number of people 
          num_of_people = 0 # Set num_of_people to 0 in order to end the loop
        end # Ending if-else conditions
      end
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end


#-----------------------------------------------------------------------------------------------------
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
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 