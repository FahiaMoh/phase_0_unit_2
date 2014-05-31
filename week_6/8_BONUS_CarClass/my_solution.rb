# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution
class Car

    def initialize(model, color)
        @model = model
        @color = color
        @speed = 0
        @total_speed = 0
        @total_distance = 0
        @direction = 0
    end

    def drive(distance, speed)
    	accelerate if @speed < speed 
    	decelerate if @speed > speed 
    	@total_distance += distance 
    	@total_speed = speed 
        puts "You are driving at #{speed}mph and have travelled #{distance} miles."
    end

    def accelerate
        @speed += 1
        puts "You have sped up"
    end

    def decelerate
        @speed -= 1
        puts "You have slowed down"
    end

    def turn_right
      @direction = 0 if @direction== 3
      @direction-= 1 if @direction != 3
        puts "Turned right."
    end

    def turn_left
      @direction= 0 if @direction== 3
      @direction-= 1 if @direction != 3
        puts "Turned left."
    end
    
    def check_speed 
    	 @speed 
    	 puts "Current speed is #{@total_speed}mph"
    end 

    def check_distance
    	puts "You have travelled a total of #{@total_distance} miles."
   end 

    def stop
          @speed = 0 
        puts "You have come to a full stop."
    end
end

class Pizza 

	def initialize(topping,type,size)
		@topping = topping
		@type = type
		@size = size 
	end 
end

# 1. DRIVER TESTS GO BELOW THIS LINE
car1 = Car.new("Ducati 696", "Black")
car1.drive(0.25, 25) 
car1.turn_right
car1.drive(1.5, 35)
car1.check_speed
car1.drive(0.25, 15)
car1.turn_left
car1.drive(1.4, 35)
car1.stop
car1.check_distance 


# 5. Reflection 
#Really fun challenge so far, didn't get the pizza part done but i'll continue to power through that 
# at first i really over-thought this challenge and tried doing too much at once and was getting too difficult
# When i took a step back and tried to break things down, i started getting it to work the way I wanted it to.  
# didn't really learn anything new in this challenge, just worked on what I knew and learned from past challenges, so it was fun putting everything i learned
#to the test.  