# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a #creates an array with the ranges from a-z inclusive as strings
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # creates the special characters as spaces in the array
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # and then rotates the letters by shifting left by 4 and matches the element of the alphabet in a different array
    # and converts that to the hash
    original_sentence = sentence.downcase #puts the sentence that needs to be encoded into a variable that will downcase it
    encoded_sentence = [] # creates empty array for the final decoded sentece
    original_sentence.each_char do |element| # for each character in the elmeent do 
      if cipher.include?(element) # if cipher includes this element
        encoded_sentence << cipher[element] # push the element in the cipher to the encoded sentence
      elsif element == ' ' # if it's blank then push the spaces to the encoded sentence
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element # else push the encoded element into encoded sentence
      end
     end
    
    return encoded_sentence.join # joins the elements in the array so it's legible and returns the encoded sentence
end


# Questions:
# 1. What is the .to_a method doing?
# 1. the .to_a method converts the element into an array

# 2. How does the rotate method work? What does it work on?
# 2.

# 3. What is `each_char` doing?
# 3. for each character in this string, iterate over it doing whatever the next line says

# 4. What does `sample` do?
# 4. the sample method returns random element from the array if no value is passed as an arguement

# 5. Are there any other methods you want to understand better?
# 5. I'll probably have to revist the .rotate, .sample and .zip to really solidify my understanding of those two, others are fine and I've had experiences with them. 

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# 6. It looks much cleaner and simpler.  Using that hash is pretty succinct. I think using an array produced a longer solution.

# 7. Is this good code? What makes it good? What makes it bad?
# 7. I think it's a better workign solution than what we had and it introduces new ways to go about something. 
  # I like the simplicity and logic of it. 


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
# it is different each time because the symbols are randomly selected which changes each time the test is run. 




# 5. Reflection 
=begin 
This really helps me understand the refactoring process better.  Clearly, this is a lot simpler, cleaner, more logical than our solution.  
THey both work but this is just infinitely better in structure.  I feel doing this exercise gave me some much needed perspective on tackling solutions
It also helped me see how others logic and process on challenges and i picked up new skills that I need to practice using in order to solidify
my learning of them.  

Our working solution was just a working solution.  I would definitely be able to edit it more now looking at this solution and seeing the methods/ideas implemented.

=end 
