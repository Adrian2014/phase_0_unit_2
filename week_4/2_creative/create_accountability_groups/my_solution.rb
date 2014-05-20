# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: the cohort array
# Output: random groups of four or less.
# Steps: create a cohort array, create method that will take an array and split the values into random groups of four or less.


# 3. Initial Solution

cohort= ["Quy Tran","Ravi Patel", "Ryan Spencer","Samuel Dominic Kirn Clements","Sara Chen","Spencer Zhang","Steve Loar","Tanner Blumer","david hwang","Adrian Tawadros","Alan Jameson","Andrew Adams","Angela Kosek","Ann Lin","Darrell Jones","Francisco Scala","Isaac Keith","Ismail Kalimi","James Miller","James Walker","Jeremy Wong","Jonathan Young","Joseph Webb","Maddison Brusman","Marek Pyczkowski","Max Diener","Praniti Sinha"] 


def acc_group(array)
	array.shuffle.each_slice(4){|x| p x}
	puts "If you are in a group of three, you should have a trio pairing session to complete the last assignment"
end
 acc_group(cohort)



# 4. Refactored Solution







# 1. DRIVER TESTS GO BELOW THIS LINE


# 5. Reflection 
# I liked this challenge. It was pretty easy once I figured out where to put .shuffle, the method would not work anywhere else.
# I still do not know how to write test code for this kind of problem.  Obviously I could just set it equal to what it is suppose to be,
# but since each output is going to be random, I can't even do that.  I knew what I wanted my method to do, and I used overstack to find 
# the right methods.

