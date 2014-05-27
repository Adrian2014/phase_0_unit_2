# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a variable with letters that would be like a dice with letters instead of numbers
# Output: the number of sides on this 'die', and a random letter fromt the 'die'
# Steps:Create two methods 'sides' and 'roll'
# sides will tell you how many sides your dice has
# roll will give you a random letter from your list.
# if there are no letters, raise an Argument Error



# 3. Initial Solution

class Die
  def initialize(labels)
  	@sides=labels
  	length=labels.length
  	  if length < 0 
   	  raise ArgumentError.new("ArgumentError")
   	end
  end

  def sides
  	return "Number of sides is #{@sides.length}, and the contains the following labels #{@sides.join}"
  end

  def roll
  	return "Your random label is #{@sides.sample}"
  end
end

 possible_values = ('A'..'Z').to_a.shuffle.first(15)

      die = Die.new(possible_values)

      p die.roll
      p die.sides
      
     


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# This was a lot like the first assignement.  It was pretty straight forwand and simple.  I did have to look up 
# the .sample method.  I am not suer how to do driver tests for this challenge.  I have a tutoring session to find out how
# this week.
