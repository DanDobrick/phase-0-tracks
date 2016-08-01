# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# require_relative refers to another file in the same file structure
# require allows us to use modules/gems that are pre-existing 


class VirusPredictor

  # creates instance with three instance variables (@state, @population, @population_density)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling predicted_deaths and speed_of_spread methods; return value is a string the same as speed_of_spread
  def virus_effects
    num_of_deaths = predicted_deaths(@population_density, @population, @state)
    speed = speed_of_spread(@population_density, @state)
    print_end_state(num_of_deaths, speed)
  end

  def print_end_state(number_of_deaths, speed)
    puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  private

  # Calculates the number of deaths a state will have based on it's population density and population, then prints this to a string
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
       number_of_deaths = if @population_density >= 200
                           (@population * 0.4).floor
                         elsif @population_density >= 150
                            (@population * 0.3).floor
                        elsif @population_density >= 100
                            (@population * 0.2).floor
                        elsif @population_density >= 50
                            (@population * 0.1).floor
                        else 
                            (@population * 0.05).floor
                        end
  end

  # calculates the speed of death in a state based on the population density and prints this information to a string.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

   if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
    
    speed

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, info_hash|
  VirusPredictor.new(state, info_hash[:population_density], info_hash[:population]).virus_effects
end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#       The first has a string as a key and the second a symbol. Using a string as a symbol lets you use the key as a string, for printing etc.
# What does require_relative do? How is it different from require?
#       require_relative refers to another file in the same file structure require allows us to use modules/gems that are pre-existing 
# What are some ways to iterate through a hash?
#       You can iterate through the keys (using hash.keys) and access the values that way, or you can iterate using .each |key, value|
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#       They were instance variables, no need to pass instance variables to another instance method within the same class!
# What concept did you most solidify in this challenge?
#       Some of The ways to re-factor methods. I am shaky on these and think I just need more time looking at code.