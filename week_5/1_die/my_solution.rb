# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: Angela].

# 2. Pseudocode

# Input: Is a number that will represent the number of sides to a dice
# Output: Will be a random number from 1 to the amount of sides on the dice
# Steps: Create two methods 'sides' and 'roll'
# sides will tell you how many sides your dice has
# roll will give you a number between 1 and sides.
# if sides is not > 1, raise an Argument Error


# 3. Initial Solution

class Die
def initialize(sides)
    @sides=sides
   if sides < 1 
   	  raise ArgumentError.new("ArgumentError")
   	end

end

  
 def sides 
 	return @sides
 end

  
def roll
    rand(1..@sides)
  end
end





# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(6)
puts die.sides == 6
puts die.roll == rand(1..6) #<==test a few times to get true since all numbers will be random.





# 5. Reflection 
# Angela and I worked together on this assignment.  At first neither of us knew what to do.  We were starting week 5 together.
# We both did some reseach about instance variables, and after about 30mins we understood what we needed to do.
# Once we undertstood the core concept it took us only a couple minutes to write workable code.





