# U2.W4: Cipher Challenge


# I worked on this challenge with: David sin, David Krause.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message) # 
#   input = coded_message.downcase.split("") #Takes input, downcases it, and splits each individual element into an element of an array
#   decoded_sentence = []     # creates an empty array called decoded_sentence 
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   # Pros: This allows a direct translation for each key
#             "h" => "d",   # Cons: It's really long and inefficient 
#             "i" => "e",   
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",   
#             "m" => "i",
#             "n" => "j", 
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # Each is examining each element of the input array as x 
#     found_match = false  # if found false it leaves that element of the input as the same and pushes it decoded_sentence
#     cipher.each_key do |y| # Examining each key of the hash cipher 
#       if x == y  # If statement comparing the input element (x) with the key of cipher hash (y) for match 
#         puts "I am comparing x and y. X is #{x} and Y is #{y}." # puts string 
#         decoded_sentence << cipher[y] # Pushes cipher[y] into the array decoded_sentence
#         found_match = true #marks match as true 
#         break  # the value is found so it doesn't have to search through all the symbols
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #Replaces these symbols with a space
#         decoded_sentence << " " #push space into decoded array 
#         found_match = true #marks match as true 
#         break # ends the loop for the symbols 
#       elsif (0..9).to_a.include?(x) # puts the values in the range in an array 
#         decoded_sentence << x #pushes number as is into decoded array
#         found_match = true #mark match as true
#         break # ends the loop for the range class
#       end 
#     end
#     if not found_match  # if not true 
#       decoded_sentence << x #pushes the x into the decoded_sentence 
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") #takes elements from array and combines them into a string
 
#   if decoded_sentence.match(/\d+/) #finds matches for any numbers in the input 
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # takes that number and inserts it with an integer and divides it by 100 
#   end  
#   return decoded_sentence # Returning string of decoded sentence        
# end

# Your Refactored Solution
def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") 
  decoded_sentence = []
   alphabet = ("a".."z").to_a 
   input.each do |x|
   found_match = false 
   if alphabet.include?(x)
      index = alphabet.index(x)
      if index - 4 < 0
          decoded_sentence << alphabet[index+22]
      else 
          decoded_sentence << alphabet[index-4]
      end  
    found_match = true 
    elsif ["@", "#","$", "%","^","&","*"].include? x 
        decoded_sentence << " " 
        found_match = true 
    end 
    if not found_match  
      decoded_sentence << x 
    end
  end
  decoded_sentence = decoded_sentence.join("") 
 
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence      
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# # Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
 p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
 p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
 p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
# p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
# p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
# What parts of your strategy worked? What problems did you face?

# breaking this down line by line helped figure out how the whole thing came together which really helped in the refactoring process.
# the biggest challenge was replace that huge cypher hash and automating the process, we brainstormed and tried different ways and finally decided
# that the indexing was our best way to go about it and the refactoring of the rest wasn't too challenging. 

# What questions did you have while coding? What resources did you find to help you answer them?
# some of the classes and methods we had to check the ruby docs to really understand their roles in the program.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# the regexs were pretty confusing for me especailly how they were used in this case so i'll have to revisit those concepts

# Did you learn any new skills or tricks?

# creating an index if statement that would run through it for the letters of the cypher i think was a different approach and it was a cool 
# way to go aobut it

# How confident are you with each of the Learning Competencies?

# I think i've grasped the learning competencies for this challenge
# Which parts of the challenge did you enjoy?

# the refactoring wasn't as tedious as i thought.  In fact, i learned more refactoring it and analyzing it line by line
# than i thought i would have.  