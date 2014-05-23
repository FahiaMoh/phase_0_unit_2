# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

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

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code"  
p create_word(boggle_board, [0,1], [0,2], [1,2])  == "rad"
p create_word(boggle_board, [0,1], [1,1], [2,1], [3,2]) == "rock" 

# Reflection 


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# set row equal to the global variable, boggle_board and pass the row as it's input

# Initial Solution
def get_row(row)
    row = $boggle_board[row]
end


# Refactored Solution
# Code is DRY 
# Not sure how else to refactor this 

# DRIVER TESTS GO BELOW THIS LINE
p get_row(1) == ["i", "o", "d", "t"] 
p get_row(2) == ["e", "c", "l", "r"] 
p get_row(3) == ["t", "a", "k", "e"]


# Reflection 
# I kept trying to put the boggle_board inside the method and call the row from its input, but calling it outside the method
# threw me an error because it wasn't a global accessible variable.  I tried setting it as a global variable and my method worked.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# set col equal to the global variable boggle_board.  The map method on the boggle_board will allow us to access the letters in the column
# and return them in a string  
 
# Initial Solution
def get_col(col)
col = $boggle_board.map{|board| board[col]}
end

# Refactored Solution
# code is DRY 
# not sure how else to refactor it 

# DRIVER TESTS GO BELOW THIS LINE
p boggle_board[0][1] == "r"  
p boggle_board[2][1] == "c" 
p boggle_board[3][3] == "e" 
p boggle_board[2][3] == "x"

# Reflection 
# The first thing I thought of trying after the global variable was the map method.  Since it take the item and block unchanged from the original,
# this seemed useful for the problem at hand. 