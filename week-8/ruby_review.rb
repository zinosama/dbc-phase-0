# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [1] hours on this challenge.

# Pseudocode
# check for left to right diagono.
# check for right to left diagono.
# check for horizontal
# check for vertical

# Initial Solution
class BingoScorer
	def initialize(inputArray)
		@board=inputArray
	end

	def check()
		if @board[0][0]=='x'
			if @board[1][1]=='x'
				if @board[2][2]=='x'
					if @board[3][3]=='x'
						if @board[4][4]=='x'
							return true
						end
					end 
				end 
			end
		end 
		if @board[0][4]=='x'
			if @board[1][3]=='x'
				if @board[2][2]=='x'
					if @board[3][1]=='x'
						if @board[4][0]=='x'
							return true
						end
					end 
				end 
			end
		end

		counter=0
		while counter<5
			if ((@board[counter][0]=='x')&&(@board[counter][1]=='x')&&(@board[counter][2]=='x')&&(@board[counter][3]=='x')&&(@board[counter][4]=='x'))
				return true
			elsif ((@board[0][counter]=='x')&&(@board[1][counter]=='x')&&(@board[2][counter]=='x')&&(@board[3][counter]=='x')&&(@board[4][counter]=='x'))
				return true
			else
				counter+=1
			end
		end

		return false
	end
end




# Refactored Solution
class BingoScorer
	def initialize(inputArray)
		@board=inputArray
	end

	def check()
		if ((@board[0][0]=='x')&&(@board[1][1]=='x')&&(@board[2][2]=='x')&&(@board[3][3]=='x')&&(@board[4][4]=='x'))
			return true
		end 
		if ((@board[0][4]=='x')&&(@board[1][3]=='x')&&(@board[2][2]=='x')&&(@board[3][1]=='x')&&(@board[4][0]=='x'))
			return true
		end

		counter=0
		while counter<5
			if ((@board[counter][0]=='x')&&(@board[counter][1]=='x')&&(@board[counter][2]=='x')&&(@board[counter][3]=='x')&&(@board[counter][4]=='x'))
				return true
			elsif ((@board[0][counter]=='x')&&(@board[1][counter]=='x')&&(@board[2][counter]=='x')&&(@board[3][counter]=='x')&&(@board[4][counter]=='x'))
				return true
			else
				counter+=1
			end
		end

		return false
	end
end





# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

wrong = [[47, 44, 71, 8, 3],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 20, 96, 68, 51],
                  ['x', 70, 54, 80, 83]]                

new_game=BingoScorer.new(horizontal)
p(new_game.check)
new_game2=BingoScorer.new(vertical)
p(new_game2.check)
new_game3=BingoScorer.new(right_to_left)
p(new_game3.check)
new_game4=BingoScorer.new(left_to_right)
p(new_game4.check)
new_game5=BingoScorer.new(wrong)
p(new_game5.check)

# Reflection
# What concepts did you review or learn in this challenge?
# I reviewed the concept of array manipulation.

# What is still confusing to you about Ruby?
# The for loop in Ruby is still confusing.

# What are you going to study to get more prepared for Phase 1?
# Ruby for loop.