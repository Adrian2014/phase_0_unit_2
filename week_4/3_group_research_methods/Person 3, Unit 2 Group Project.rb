#Run this first and see that it will sort the hash from youngest to oldest

i_want_pets = ["I", "but", "have", "3", "4", "only", "pets", "want"]
my_family_pets_ages = {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, 
            "Annabelle" => 2, "Ditto" => 5}

def my_hash_sorting_method(source)
  source.sort_by{|x,y| y}
end
my_hash_sorting_method(my_family_pets_ages)

#Now add this, and see that given the proper values, the first method will come out as true 

def my_array_sorting_method(source)
    source.sort_by{|x| x.to_s}
end

def my_hash_sorting_method(source)
  source.sort_by{|x,y| y}
end

p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 





i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

def my_array_finding_method(source, thing_to_find)
 	source.select {|l| l.to_s.include?(thing_to_find)}
end



def my_hash_finding_method(source, thing_to_find)
  source.select {|k, v| v == thing_to_find}.keys
end

def my_array_modification_method(source, thing_to_modify)

 source.collect! { |item| item.is_a?(Integer) ? item += thing_to_modify : item = item } 
    source
end


def my_hash_modification_method(source, thing_to_modify)
    source.each {|x,y| source [x] = y+thing_to_modify}
    
end
i_want_pets
my_family_pets_ages
