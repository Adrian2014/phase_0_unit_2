# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
@@boggle_board=[]
 def initialize(array)
 	@@boggle_board=array
 end
 
 def create_word(*coords)
    puts coords.map { |coord| @@boggle_board[coord.first][coord.last]}.join("")
 end   

 def get_row(row)
     puts "#{@@boggle_board[row]}"
 end

 def get_col(col)
	column=[]
		@@boggle_board.each do |array|
	    	column<<array[col]
	    end
	   puts "#{column}"
 end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
boggle_board.get_col(1)
boggle_board.get_row(1)
boggle_board.create_word([2,1], [1,1], [1,2], [0,3])


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:


# 5. Reflection 
# This assignment only took a few minutes.  It was basically copy and paste from last week
# but with a class variable.



