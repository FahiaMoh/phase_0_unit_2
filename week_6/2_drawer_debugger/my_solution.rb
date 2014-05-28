# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
   @contents = []
   @open = true
  end

  def open
   @open = true
  end

  def close
   @open = false
  end 

  def add_item(item)
   @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
  	if item != nil
   @contents.delete(item)
end 
  end

  def dump  # what should this method return? # all the stuff in the drawer would be dumped out and it returns the empty drawer
   puts "Your drawer is empty."
  end

  def view_contents
   puts "The drawer contains:"
   @contents.each {|silverware| puts "- " + silverware.type }
  end

end
	class Silverware
	 attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
	 @type = type
	 @clean = clean
	end

	def eat
	 puts "eating with the #{type}"
	 @clean = false
	end

	def clean_silverware
	 puts "The #{type} is now clean"
	 @clean = true 
	end

	def clean
		puts "the #{type} is now clean"
		@clean = true 
	end 
end 
	knife1 = Silverware.new("knife")
	fork1 = Silverware.new("fork")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork1.eat
# fork1.clean_silverware
silverware_drawer.add_item(fork1) 

#BONUS SECTION
puts fork1.clean

# DRIVER TESTS GO BELOW THIS LINE

silverware_test = Silverware.new("test")
drawer_test = Drawer.new
p drawer_test.view_contents == true 
p drawer_test.close == false 
p silverware_test.clean_silverware == true 


# 5. Reflection 
#This challenge was pretty straight forward, I didn't have too much trouble following the guidelines although they were a tad vague
