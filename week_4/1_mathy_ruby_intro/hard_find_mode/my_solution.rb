# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
arrayOne=[1,2,2,3]
arrayTwo=[1,2,3]
arrayThree=["who", "what", "when", "where"]
arrayFour=["who", "what", "who"]


def mode(array)
  array.sort_by{|x| array.count(x)}.last
end
	


def mode 
  count = Hash.new(0)
  each {|x| count[x] += 1 }
  count.sort_by{|k,v| v}.last[0]
  end


# 3. Refactored Solution



# 4. Reflection 