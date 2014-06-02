# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield #unless yield, is saying unless true
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Whenever the assert method is called, and is false, it raises "Assertion failed"
# In this case line 14 causes the method assert to raise "Assertion failed!" from line 9.
# because assert { name == "billybob" } is not true
# 


# 3. Copy your selected challenge here

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
      ":high"
    elsif guess < @@answer
      ":low"
    else
     ":correct"
    end
  end

  def solved?
    if  @@answer==@@guess
       true
    else
      false 
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



# 4. Convert your driver test code from that challenge into Assert Statements
game = GuessingGame.new(10)


assert {game.guess(5)==":low"}
assert {game.guess(15)==":high"}
assert {game.guess(10)==":correct"}
assert {game.solved? == true} 





# 5. Reflection
# This assignment helped alot with my understanding of assert statements.  I was able to
# learn the difference between puts and return values.




