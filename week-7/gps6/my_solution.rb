# Virus Predictor

# I worked on this challenge [by myself, with: Sarah Taurchini].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# It requires a document from the current directory using a relative path.
#
require_relative 'state_data'

class VirusPredictor

#constructor, which initializes the instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end 

#provides method call to those two methods.
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private
#calculates number of deaths and print it in a statement.
  def predicted_deaths()
    # predicted deaths is solely based on population density
    death_hash={
      200=>0.4,
      150=>0.3,
      100=>0.2,
      50=>0.1,
      0=>0.05
    }

    death_hash.each{|key,value|
      if @population_density>=key
        number_of_deaths=(@population * value).floor
        print "#{@state} will lose #{number_of_deaths} people in this outbreak"
        return
      end
    }

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#calculates the speed of spread and print it in a statement.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    density_hash={
      200=>0.5,
      150=>1,
      100=>1.5,
      50=>2,
      0=>2.5
    }

    density_hash.each{|key,value|
      if @population_density>=key
        speed+=value
        puts " and will spread across the state in #{speed} months.\n\n"
        return
      end
    }

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each{|state,value| 
  VirusPredictor.new(state,value[:population_density],value[:population]).virus_effects
}



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The colon syntax only allows keys to be symbals; hash racket doesn't.

# What does require_relative do? How is it different from require?
# require_relative requires file using path relative to the current directory of the calling file; require uses path relative to the operating directory.

# What are some ways to iterate through a hash?
# using each and map method.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# instance variables can be accessed by all methods inside the class.

# What concept did you most solidify in this challenge?
# The idea of refactoring using hash or array to store information in order to make codes more DRY.