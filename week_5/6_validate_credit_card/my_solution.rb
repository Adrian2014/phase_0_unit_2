# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	
def initialize (card) 
	@numbers=card 
	if card.to_s.length != 16 
   	  raise ArgumentError.new("ArgumentError")
   	end
	  
end

   
   def check_card 
   	numbers=[]
   	numbers=@numbers.to_s.split("")
   	numbers=numbers.reverse
   	sum=[]
   	numbers.each_with_index do |n, i|
   		
     sum << if ((i+1) % 2 == 0)
             n.to_i * 2
           else
             n.to_i
          end
          end
     
     realSum=0
     sumArray=[]
     sumArray=sum.join.split("")
     sumArray.each do |x|
     	realSum += x.to_i
     end
      

     if (realSum % 10) == 0
        return true
     else
        return false
     end
end
 end







# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


card = CreditCard.new(4408041234567892)
      puts  card.check_card == false

card2 = CreditCard.new(4408041234567893)
    puts card2.check_card == true 




# 5. Reflection 
# The hardest part of this assigment for me was getting my Arguement Error to work.  I had a rough time int eh begining, 
# but it was because I forgot to make it a string.  After that I was able to complete the rest of the challenge with relative 
# ease. 
