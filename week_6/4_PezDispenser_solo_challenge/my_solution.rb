# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
 # initially will take an array, and will move that value to a class variable
 # def pez_count returns just the value of the how many pez you have without a puts statement
 # def see_all_pez Shows you the pez flavors you have left
 # def eat_one_pez allows you the 'eat' the top pez
 # def pez_count_with_puts tells you what you have left


# 3. Initial Solution

class PezDispenser
@@pez_peices=[]
	def initialize(pez)
		@@pez_peices<<pez
		puts "A new pez dispenser has been created. You have #{pez_count} pez!"
	end

	 def pez_count #returns just the value of the how many pez you have without a puts statement
    	count=[]
    	@@pez_peices.each do |array|
    	 	array.each do |single|
    	 	   count<<single
    	 	end 
    	end
    	   return count.length   
    end

	def add_pez(*added) #allows you to add multiple pez to your dispenser
    	@@pez_peices<<added
    	puts "Your pez dispenser now holds: #{pez_count}"
    end

	def see_all_pez #Shows you the pez flavors you have left
	    count=[]
    	@@pez_peices.each do |array|
    	 	array.each do |single|
    	 	   count<< single + " "
    	 	end
    	 end
    	 puts "Here's a look inside the dispenser: #{count.join}"
	end

	def want_pez
		"Oh, you want one do you?"
	end

	def eat_one_pez #allows you the 'eat' the top pez
		count=[]
		@@pez_peices.each do |array|
    	 	array.each do |single|
    	 	   count<<single 
    	 	end
    	 end
    	 puts "The pez flavor you got is #{count.first}!"
    	 @@pez_peices=[]
    	 count=count.drop(1)
    	 @@pez_peices<<count
    end
    
    

    def pez_count_with_puts  # tells you what you have left
    	count=[]
    	@@pez_peices.each do |array|
    	 	array.each do |single|
    	 	   count<<single
    	 	end 
    	end
    	   puts "Now you have #{count.length} pez!"    
    end
end
 
# flavors=["red", "yellow", "blue", "yellow"]
#  pez=PezDispenser.new(flavors)
#  pez.see_all_pez
#  pez.add_pez("blue")
#  pez.see_all_pez
#  pez.pez_count
#  pez.eat_one_pez
# #  pez.pez_count
#  pez.have_left

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
super_mario.eat_one_pez
# puts "The pez flavor you got is: #{super_mario.get_pez}"
super_mario.
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection
# I liked this challege a lot.  It was easy to do with the psuedo code written out.  
# Only one class in this challenge, unlike the playlist_solo_challenge, made this 
# assignment go by quickly.



