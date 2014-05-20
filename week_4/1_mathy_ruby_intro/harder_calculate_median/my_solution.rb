# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def median(array)
	if array.include?(Integer)
	return array.inject{|memo, i| memo + i} / array.size
else 
    return array.sort_by{|x| x}.mid
end
end



def median(array)
  array.sort! 
  if array.length % 2 == 0
  median_value = (array[array.length / 2] + array[array.length/2 - 1]) / 2.0
  else
  median_value = array[array.length / 2]
  end
end

# 3. Refactored Solution



# 4. Reflection 
#I came up with the first method on my own.  The second one I created with my tutor.  I understand this concept.
# I did go to a tutoring session for help. Even though my original code looks like it would work, it doesn't.  
# We did not have time in my tutoring session to figure out why my code woudld not work.