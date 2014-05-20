# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: Isaac and Marek ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a # create an alphabet 
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # create a hash with values from array - [a,b][c,d].zip => {a:c, b:d}
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # setting values for spaces
    
    original_sentence = sentence.downcase # create new variable that is downcase
    encoded_sentence = [] #create empty array
    original_sentence.each_char do |element| #goes through each character of original_sentence
      if cipher.include?(element)#if cipher includes element then 
        encoded_sentence << cipher[element]# pushes cipher element to encoded_sentence
      elsif element == ' ' # if element is a space 
        encoded_sentence << spaces.sample # picks random element out of array
      else # all else
        encoded_sentence << element #push element to encoded_sentence
      end
     end
    
    return encoded_sentence.join # join all values in encoded_sentence
end


# Questions:
# 1. What is the .to_a method doing?
#  creating an array
# 2. How does the rotate method work? What does it work on?
#   rotate method takes the array values and shifts them(number) 
# 3. What is `each_char` doing?
#     goes through each character of an array
# 4. What does `sample` do?
#     picks random element out of array
# 5. Are there any other methods you want to understand better?
#    just all of them
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# Ours looks almost as good, as this
# 7. Is this good code? What makes it good? What makes it bad?
#    Yes, it is good code.  Makes good use of the method library


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
 





# 5. Reflection 
# I worked with the same people I completed challenge 7 with, on this challenge. We were fresh off of doing the same process for our refactoring.
# Going through this actually helped us with challenge 6.  We learned what .rotate did, and we were able to replace .push.shift(4) in our refactored code for challenge 6, making it even better!
# We did have to look up .sample and .zip as well, but we were able to go from line to line, and explain what was going on in the script with relative ease!


