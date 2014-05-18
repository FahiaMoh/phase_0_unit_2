# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_hash_deletion_method(source, thing_to_delete)
   p	source.delete_if { |pets| pets.to_s.include?(thing_to_delete) }
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if {|k,v| thing_to_delete == k }
end
# Identify and describe the ruby method you implemented. 
# Both the array and hash will use 'delete_if' methods. For the array, delete the element if the element includes
# 'thing_to_delete'. Make sure we change all elements to a string since we have integers in the array.
# For the hash, we will delete the key/value if the key is equal to 'thing_to_delete'.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
=begin 
 I had no clue hwo to go about this at first and had to look at the ruby docs to get an idea of how to tackle this challenge.  
 I also had trouble understanding how the driver test code worked and what exactly "p" was.  After playing around with driver test code
 I realized that it was a true/false statement and would pass true if the output was the same as what it had there, which is pretty cool.  and the p
 is a kernel method that prints the value of .inspect which is useful for debugging and in this case for driver test code it is good to use.

 Nothing was tedious but it was interesting because I was very curious about a lot of things in this challenge that I wasn't exactly sure of so 
 I need to shed some light on some concepts that make more sense now than before.  
=end 