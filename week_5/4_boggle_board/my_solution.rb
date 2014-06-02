# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array


# Pseudocode

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

  puts create_word([2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

def get_row(row)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    puts "#{boggle_board[row]}"
end
  get_row(3)

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.
def get_col(col)
	boggle_board = [["b", "r", "a", "e"],
                   ["i", "o", "d", "t"],
                   ["e", "c", "l", "r"],
                   ["t", "a", "k", "e"]]
    column=[]
    boggle_board.each do |array|
    	column<<array[col]
    	end
    puts "#{column}"
end
    get_col(1)

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 
# I liked this assignment.  I don't understand why the first part of it was given to us.  I am not sure if the reason we were, given
# different methods like this, and didn't make a class, was because we were suppose to make the orginal, boggle_board
# variable work or not.  I could not get my methods to work until I put boggle_board in the method.