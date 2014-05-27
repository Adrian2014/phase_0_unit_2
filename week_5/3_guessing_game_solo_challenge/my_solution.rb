# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:When input a number that is set as your 'anwser'.  Then be able to input other numbers that will be your 'guess'.
# Output: Will return whether or not guess = anwser, if gues does not anwser, return whether the guess was higher or lower than the anwser
# Steps: First create two instance methods guess and solved?  the guess method will take the number that is given as the 'guess' 
# and will return whether that number is the anwser or if it is higher or lower than the anwser.
# The solved method will return true if the guess = anwser and false if not.
# Create variables that can be accessed throughout the class that will be equal to the anwser and the guess.
# make sure that the anwser and guess do not initially equal one another/


# 3. Initial Solution

class GuessingGame
@@answer=0
@@guess=0
  def initialize(answer)
    guess=@guess
    @@answer+="#{answer}".to_i
  end

  def guess(guess)
  	@@guess="#{guess}".to_i
  	if guess > @@answer
  		puts ":high"
  	elsif guess < @@answer
  		puts ":low"
  	else
		puts ":correct"
  	end
  end

  def solved?
  	if  @@answer==@@guess
  		puts true
  	else
  		puts false 
  	end
  end

end




# 4. Refactored Solution
class GuessingGame
@@answer=0
@@guess=0
  def initialize(answer)
    guess=@guess
    @@answer="#{answer}".to_i
  end

  def guess(guess)
    @@guess="#{guess}".to_i
    if guess > @@answer
      puts ":high"
    elsif guess < @@answer
      puts ":low"
    else
    puts ":correct"
    end
  end

  def solved?
    if  @@answer==@@guess
      puts true
    else
      puts false 
    end
  end

end







# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)
p game.solved? == false
p game.guess(5)==":low"
p game.guess(15)==":high"
p game.guess(10)==":correct"
p game.solved? == true 





# 5. Reflection 
# I liked this challenge. It helped my understanding of classes and instance variables a lot.  The only real 
# problem with my code is that if run :
# game = GuessingGame.new(0)
# p game.solved?
# it will return true without having guessed a number.  I am sure if I tinker with it I can change that.
# I try to complete the solo challenges on my own.  But I did look up how to use the @@ property(not sure what to call it?)
# that is in Classes.  It helped a lot.  None of my driver code works.  I meant to go to a tutoring session about that, during week
# 5, but I did not have the time.  I have a session during week 6 to find out why it is not working!
