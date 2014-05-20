# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?  The input will be a number
# What is the output? (i.e. What should the code return?) Should return that number, with commas every 3 spaces
# What are the steps needed to solve the problem?  need to create a method, that will count the amount of keystrokes it takes to create a number 
# and will then put a comma after every three.


# 2. Initial Solution
def separate_comma(number)
	if number.to_s.length >= 4 
	   need_comma=[]
	   need_comma=number.to_s.split("")
	   comma_hash={}

	   number.to_s.length.times do |i|
       comma_hash[i+3] = need_comma[i] 
            end
       
       
       comma_hash.each do |k, v| 
       	  if k%3==0
       	  	comma_hash[k]<<","
       	 end
       	end


	   real_number=[]
	   real_number=comma_hash.values
	   length=real_number.length
	   real_number_two=real_number.delete(length)

if real_number.last==","
	puts real_number_two   
end

     puts real_number.join
	else 
	   puts number
	end
end
	   
separate_comma(1000)
separate_comma(100)
separate_comma(1000000)



# 3. Refactored Solution



# 4. Reflection 
# I almost have this working!  I am sure I did not do it right but I am pleased with what I have done on my own. 
# I don't want to look at the internet to find out how to do this properly.  I don't understand why lines 40-42 do not work at all.
# I had a tough time with this challenge.  I am going to sign up for tutor time so that someone can tell me what I have done wrong!






