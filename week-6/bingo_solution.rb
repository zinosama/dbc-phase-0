# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# create an instance variable of the list of letters in initialize
# generate a random number between 0 to 4 to represent column
# generate a random number between 1 to 100 to represent target number
# use the column number as index to get the actual letter from the instance array.
# return the column letter and the target number in an array.

# Check the called column for the number called.
# transform the column letter into column number.
# retrieve the target number

# If the number is in the column, replace with an 'x'
  #fill in the outline here
# use a while loop to go through flattened array and search for target number.
# if target number is found, divide current index by 5 to get first index; use column number as the second index.
# go to the game board to change the value at the target indexes with an "X".

# Display a column to the console
# print out the nested arrays.

# Display the board to the console (prettily)
# print out the nested arrays.

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter_array=["B","I","N","G","O"]
    @stop=false
  end

  def call()
    random=Random.new
    ran_letter=@letter_array[random.rand(0..4)]
    ran_number=random.rand(1..100)
    p "letter: "+ran_letter+", number: "+ran_number.to_s
    return output=[ran_letter,ran_number]
  end

  def check(input_array)
    column=@letter_array.index(input_array[0])
    target=input_array[1]
    counter=column
    while counter < @bingo_board.flatten.length
      if @bingo_board.flatten[counter]==target
        @bingo_board[counter/5][column]="X"
        @stop=true
      end
      counter+=5
    end
    p @bingo_board
  end

  def stop
    return @stop
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
counter=0
while (counter<100)
  temp=new_game.call
  new_game.check(temp)
  counter+=1
end

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# It wasn't difficult. I think it's pretty concise and accurate.

# What are the benefits of using a class for this challenge?
# It allows the use of instance variables.

# How can you access coordinates in a nested array?
# By using double brackets.

# What methods did you use to access and modify the array?
# flatten and index

# How did you determine what should be an instance variable versus a local variable?
# An instance variable represents information needed by different variables in the class.

# What do you feel is most improved in your refactored solution?
  # The use of flatten and index.