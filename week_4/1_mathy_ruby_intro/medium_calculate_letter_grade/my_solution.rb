# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def get_grade(array)
	averageGrade= array.inject{|memo, i| memo + i}/array.size;
	if averageGrade >= 90
		return "A"
	elsif averageGrade >= 80
		return "B"
	elsif averageGrade >= 70
		return "C"
	elsif averageGrade >= 60
		return "D"
	else averageGrade < 60
		return "F"
end

		
		
		

# 3. Refactored Solution



# 4. Reflection 
# I think this was one of the pre