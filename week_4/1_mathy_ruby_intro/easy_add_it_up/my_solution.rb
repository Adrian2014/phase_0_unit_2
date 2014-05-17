# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
    # 1)Input will be an array with number values
    # 2)Input will be an array of strings
# What is the output? (i.e. What should the code return?)
    # The Output will be the sum of the values of an Array
    # The Output will be Strings all put together in sentence form
# What are the steps needed to solve the problem?
    # Define a method as 'total' that will go through each number and add all the values together.
    # Define a method as 'sentence_maker' that will join a block of strings together.


# 2. Initial Solution


def total(x)
	x.inject(0) { |result, i| result + i }
end

def sentence_maker(x)
	x.join(" ")
end




# 3. Refactored Solution
def total(x)
	x.inject { |result, i| result + i }
end
#does not need an initial value.  The result will stay the same, injecting (result + i) throughout the block.
def sentence_maker(x)
	x.join(" ")
end

# 4. Reflection 
# I wrote the same code several times using .each and not .inject. 
# sum = 0
# def total(x)
#	x.each {|i| i+=sum},
# end
#  ^ Above is my first method.






























#