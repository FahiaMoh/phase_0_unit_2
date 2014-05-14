# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: input the title, name, date, topic,thesis, and type of pronoun of the essay you want generated
# Output: outputs a generic template that uses the parameters listed above to create a very basic essay
# Steps: most of this will be in a puts statement
# puts the essay 101 as title and open a new line 
# puts title parameter in this #{notation}
# new line after title and the generic template will then list the name, when the person was born, what he was responsible for,
# and the thesis statement  


# 3. Initial Solution
def essay_writer(title, name, date, topic, thesis_statement, pronoun)
    puts "Essay 101:\n
    	#{title}
	\n
	    #{name} was born in #{date}. He was responsible for #{topic}.    
        His constant drive to add value helped build one of the largest benefits to society. 
	#{pronoun} #{thesis_statement}
	"

end
essay_writer("The Real Tony Stark", "Elon Musk",1971, "PayPal, SpaceEx and Tesla Motors","Co-founded the worlds largets online payment method that revolutionized e-commerce.", "He")

def essay_writer(title, name, date, topic, thesis_statement, pronoun)
    puts "Essay 101:\n
        #{title}
	\n
	    #{name} was born in #{date}. He was responsible for #{topic}.    
        His constant drive to add value helped build one of the largest benefits to society. 
	#{pronoun} #{thesis_statement}
	"

end
essay_writer("Tech Mogul ", "Bill Gates",1955, "Microsoft","Founded one of the worlds largest internet companies on the planet.", "He")

def essay_writer(title, name, date, topic, thesis_statement, pronoun)
    puts "Essay 101:\n
        #{title}
	\n
	    #{name} was born in #{date}. He was responsible for #{topic}.    
        His constant drive to add value helped build one of the largest benefits to society. 
	#{pronoun} #{thesis_statement}
	"

end
essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "Tokugawa Period", "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "He") 




# 4. Refactored Solution
# I don't know how much more I could clean this up because the bulk of the code is in a single puts statement and that 
# contains most of the information needed to build the generic template 


# 1. DRIVER TESTS GO BELOW THIS LINE
essay_writer("Tech Mogul ", "Bill Gates",1955, "Microsoft","Founded one of the worlds largest internet companies on the planet.", "He")

essay_writer("The Real Tony Stark", "Elon Musk",1971, "PayPal, SpaceEx and Tesla Motors","Co-founded the worlds largets online payment method that revolutionized e-commerce.", "He")

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "Tokugawa Period", "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "He") 


# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# The problem that I faced was making it as general of a template as possible, not any code-related issues
# What questions did you have while coding? What resources did you find to help you answer them?
# This challenge was more writing oriented than coding and I didn't have much trouble making it work

# Did you learn any new skills or tricks?
# I originally didn't know that i could use the /n which proved very helpful in making it look more like an essay
# How confident are you with each of the Learning Competencies?
# I think i've gotten a fair grasp on the learning competencies 

# Which parts of the challenge did you enjoy?
# Learning new ways to go about this problem was fun, I found there was hundreds of ways to go about it
# Which parts of the challenge did you find tedious?
# The most tedious thing was finding the right words for the challenge, i feel like there was more writing to do than actual coding in this challenge.
