# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
#First we are going to define these methods: car_type, distance, speed, navigation, distance, traffic_signals, output.
#The attributes associated with these methods will be: the model and color of the car_type, the amount of miles for distance, acceleration
#and deceleration for the speed, turning left or right for the navigation, the total mileage for the distance, the action of stopping for
#the traffic_signals, and the result of the car's actions for the output.



# 3. Initial Solution
class Car
@@delay=0
@@distance=0
@@action=true
@@travelTime=0


    def initialize(model, type)
        @model=model
        @type=type
     end
    
    def model
        return @model
    end
    
    def type
    	if @type == "sport"
    		return "Your delivery would have been very fast"
    	elsif @type == "sedan"
    		return "Your delivery would have been fast" 
    	elsif @type == "van" 
    		return "Your delivery would have been on time"
    	else
    		return "You should have picked up your pizza!"
    	end
    end
    
    def action
        @@action
    end
    
    def detour(miles)
        @@distance +=miles
    end
    
    def speed(distance, mph)
    	 time=distance/mph
    	 @@travelTime+=time
    	 @@distance+=distance
    	 @@action = true
    end
    
    def turnRight
        @@travelTime+=0.5
        @@action = true
    end

    def turnLeft
       @@travelTime+=1
       @@action = true
    end
    
    def stop
        @@travelTime+=1
        @@action=false
    end

    def traffic_signals
         @@travelTime+= 2
         @@action = true
    end


    def navigation  
       return @@travelTime.round(1).to_s + " mintues and drove #{@@distance} miles"
    end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
car = Car.new("honda", "sedan")

car.speed(0.25,25)
p car.action == true
car.stop
p car.action == false
car.turnRight
p car.action == true
#you get the point
car.speed(1.5,35)
car.speed(0.25,15)
car.stop
car.turnLeft
car.speed(1.4,35)
p car.navigation == "3.6 mintues and drove 3.4 miles"







# 5. Reflection
# Angela and I tried to follow the kind of commands that were in the code combat challenge.
# The code will give pauses for all turns and stops.  And will tell you when the car is in motion. 