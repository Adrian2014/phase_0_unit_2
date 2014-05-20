# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? Input is an array of values
# What is the output? (i.e. What should the code return?)If the array's length is less than the minimum size, should return a new array padded with the pad value up to the minimum size.
# What are the steps needed to solve the problem? right a method that has .pad or .pad! itorate through and array


# 2. Initial Solution
class Array 
def pad(len, val=nil)
  return dup if self.size >= len.abs
  if len < 0
    Array.new((len+size).abs,val) + self
  else
    self + Array.new(len-size,val)
  end
end
         
def pad!(len, val=nil)
  return self if self.size >= len.abs
  if len < 0
    replace Array.new((len+size).abs,val) + self
  else
    concat Array.new(len-size,val)
  end
end
end




# 3. Refactored Solution



# 4. Reflection 
# I am not sure what this assignment was asking.  The .pad method does not work at all on my terminal or my Sublime.
# I looked up the source for the .pad and .pad! and that is what I have as my solution.  
# I am going to have to ask about this in office hours, or tutoring. 







