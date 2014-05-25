# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# allows you load the file relative to the file containing require_relative statement
# it is useful for files not directly in the path, or hidden away inside a project and not inteded for outside use.
require_relative 'state_data'

class VirusPredictor
  #ititalizes the viruspredictor class with the following parameters being passed to it.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end


 #This method runs through the private predicted_deaths and speed_of_spread methods in order to highlight the viruspredictor effects 
  #The scope of the instance variables is the instance objects.  
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  #private methods can be called only in the context of the current object; you cannot call on another object's private methods.
  #by moving the private label, the virus_effects method would become private, so it couldn't be called by another user

  #this method predicts deaths based on density.  The higher the density, the more relative deaths
  def predicted_deaths(population_density, population, state)
    case @population_density
    when 0..49 then number_of_deaths = (@population * 0.1).floor
    when 50..99 then number_of_deaths = (@population * 0.2).floor
    when 100..149 then number_of_deaths = (@population * 0.3).floor
    when @population_density >= 200 then number_of_deaths = (@population * 0.4)
    else 
      number_of_deaths = (@population * 0.05).floor 
    end 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end


 #this method predicts spread of virus based on density.The higher the density, the quicker the spread
  def speed_of_spread(population_density, state) #in months
    speed = 0.0
    case @population_density
    when 0..49 then speed += 2
    when 50..99 then speed += 1.5
    when 100..149 then speed += 1 
    when 150..200 then speed += 0.5
    else 
      speed += 0.5 
    end 
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

# REFLECTION 

# I didn't find the commenting too difficult, I had already had previous knowledge on private/public methods and their purpose.  
# The refactoring was also not very difficult.  I always try to invoke a case method to try and shorten and simiplify the if/else statements being used
# if it all possible 