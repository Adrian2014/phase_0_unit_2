# U2.W4: Cipher Challenge


# I worked on this challenge with: Marek and Isaac.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # splits every keystroke from coded message, and makes each value in an array called input
  decoded_sentence = []
  special_characters=["@", "#", "$", "%", "^", "&", "*"]
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # each value in array input
    found_match = false  # allows us to continue through the loop after we hit a break
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        #puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] 
        found_match = true
        break  # breaking will allow you to go back to the begining of the loop
      elsif special_characters.include?(x) 
       decoded_sentence << " "
        found_match = true
        break
     # elsif
       #(0..9).to_a.include?(x) #string value, never will = integer value) # What does" (0..9).to_a "do? =>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ***not a string!!! will not be added to the decoded_sentence
        #decoded_sentence << x
        #found_match = true
        #break
      end 
    end
    if not found_match  # if found_match != true
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 

  #if 
  #decoded_sentence.match(/\d+/) #Find any number, and divide it by 100
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  #end  
  #return 
  decoded_sentence # What is this returning?        
end

# Your Refactored Solution





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")


# Reflection
 