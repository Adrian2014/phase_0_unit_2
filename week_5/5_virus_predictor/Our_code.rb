# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: Marek].

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#Saying that we need the file state_date to work
class VirusPredictor
  #initialize sets our instance variables within a object
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  #virus_effects calls predicted_deaths and speed_of_spread
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

  private  #Everything under has to be called within the class
# Its gonna predict number of deaths based on population density by muliplying population by given factor, for each state
  def predicted_deaths
    array  = [50,100,150,200].reverse
    #number_of_deaths = 0
   array.each do |end_of_range|
    #puts end_of_range
       if @population_density >= end_of_range
        # puts "First statement"
        # puts "population #{@population}"
        # puts "population density #{@population_density}"
        # puts "end of range #{end_of_range}"
         number_of_deaths = ( @population * end_of_range / 500 )
         # puts  ( @population * end_of_range/500)
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
          break
        else 
          number_of_deaths = (@population * 0.05).floor
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
       # else
       #   puts "Second statement"
       #    number_of_deaths = (@population * 0.05).floor
       #     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
           break
       end

    end
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



  end
# speed_of_spread will calculate the spread of virus within a given state based on population density
  def speed_of_spread #in months
    speed = 2.5 # Instead of starting at 0 start at 2.5 which is the highest if can be
    array_two  = [0,50,100,150,200].reverse # use the same array as in predicted_deaths because we are using @population_density as our common variable again
    array_two.each do |end_of_range| # For each of the values in the Array_two we want to 
    if @population_density >= end_of_range # check to see if the @population_density vsalue is greater than each of the values
       speed -= 0.5 * end_of_range/50 # Every time the value of @population_density is greater than the value of the end_of_range, the speed of the 
       break# so we dont add up all of the values of end_of_range and then substract 
     end
   end
   

    #speed=0
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 


STATE_DATA.each do |key, value|
  report = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread])
  report.virus_effects
end



# Relfection
# Marek and I worked on this assigment together.  We had everything done within an hour execpt predicted_deaths and speed_of_spread.  We were very close to finishing prediced_deaths
# Marek ended up completing that method after we finished working together.  I was able to complete speed_of_spread the following day.  We paired after I completed speed_of_spread
# and explained to each other how we came up with our code.  I liked this assignment.  We had to look up a bunch of small things, like private and .floor, but working on it together 
# made it fun and easy.





