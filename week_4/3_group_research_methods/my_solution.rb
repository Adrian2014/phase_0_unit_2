# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
 	source.select {|l| l.to_s.include?(thing_to_find)}
end

# My own driver code. Ignore.
# test_case = ["brown", "blue", "black", "grey"]
# puts my_array_finding_method(test_case, "b")

def my_hash_finding_method(source, thing_to_find)
  source.select {|k, v| v == thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
	# #source[-1],source[2] = source[-1] + 1, source[2 ]+ 1 
 #     source.collect! do |item|
 #    #     # if item.is_a?(Integer)
 #    #     #     item = item + thing_to_modify
 #    #     # else 
 #    #     # 	item = item
 #    #     end
     
 #    item.is_a?(Integer) ? item = item + thing_to_modify : item = item
 #    end
 source.collect! { |item| item.is_a?(Integer) ? item += thing_to_modify : item = item } 
    source
end


def my_hash_modification_method(source, thing_to_modify)
    source.each {|x,y| source [x] = y+thing_to_modify}
    
end

# Identify and describe the ruby method you implemented. 
# 
#
#



# Person 3
def my_array_sorting_method(source)
    source.sort_by{|x| x.to_s}
end




def my_hash_sorting_method(source)
  source.sort_by{|x,y| y}
end

# Identify and describe the ruby method you implemented. 
# I used the .sort_by method.  I orignally wanted to learn and implement the partition method, but did not understand how to use it properly.
# The .sort_by method works by going through the block and returning -1,0 or 1 for each value.
# The sort algorithm will assume that this comparison function/block will meet the requirements for method <=>:
# return -1 if x < y
# return 0 if x = y
# return 1 if x > y
# Values are then listed by putting -1 to the left and 1 to the right.  
# Making it easy to reverse lists by implementing y<=>x instead of default x<=>y


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.delete_if { |word| word.to_s.include?(thing_to_delete) }
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if { |key| key.to_s.include?(thing_to_delete) }
end


# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# 
# 
# 
# 