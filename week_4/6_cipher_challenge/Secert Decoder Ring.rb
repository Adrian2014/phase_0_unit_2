def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  special_characters=["@", "#", "$", "%", "^", "&", "*"]

  a_b_c=("a".."z").to_a
  alphabet = ("a".."z").to_a
  shifted_alphabet = alphabet.rotate(4)
  cipher={}

26.times do |i|
cipher[shifted_alphabet[i]] = a_b_c[i] 
end  
  

input.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y  
        decoded_sentence << cipher[y] 
        found_match = true
        break  
      elsif special_characters.include?(x) 
       decoded_sentence << " "
        found_match = true
        break
      end 
    end
    if not found_match  
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  
  decoded_sentence        
end


p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")


# Reflection
# I was fortunate enough to work with a good group on this challenge.  I was the driver with Marek and Isaac navigated.
# I like challenges like this because they allow you to play with scprit and see what each part of the code does.  
# You don't need to look things up, becase you can test each part!


