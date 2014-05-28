# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard

	def initialize(board)
		@board = board
	end

	def create_word(*coord)
		coord.map {|x| @board[x.first][x.last]}.join("")
	end

	def get_row(row)
		@board[row].join
	end

	def get_col(col)
		@board.map {|row| row[col]}.join
	end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)


# 4. Refactored Solution
#code is DRY 
#not sure how to refactor it 

# 1. DRIVER TESTS GO BELOW THIS LINE
p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
p boggle_board.get_row(0) == "brae"
p boggle_board.get_row(1) == "iodt"
p boggle_board.get_row(2) == "eclr"
p boggle_board.get_row(3) == "take"

p boggle_board.get_col(0) == "biet"
p boggle_board.get_col(1) == "roca"
p boggle_board.get_col(2) == "adlk"
p boggle_board.get_col(3) == "etre"

# 5. Reflection 
# I think it was cool we went from procedural to OOP.  I like it better like this and implementing the class and giving it instances
# really was interesting.  I didn't learn much and I just applied most of the logic from last weeks challenge 
#the only twist here was printing it as a string so having it join instead of showing up as an array of strings
# Since I went about it very similarly last week besides the global variable twist, I didn't have trouble and i took my time
# taking the differences between the procedural and object oriented programming. 
# I like that with the object, we can call methods on the boggle board vs last week we just printed the method itself. 
# for example, last week trying to get the row of the boggle board we'd go: "p get_row(1)" but now, we call the method on the boggle board
# boggle_board.get_row(1) which gives us the same answer.  Pretty cool and I like this much better.  