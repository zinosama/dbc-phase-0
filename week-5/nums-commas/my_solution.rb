# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer
# # What is the output? (i.e. What should the code return?)
# A string
# # What are the steps needed to solve the problem?
# split the number into an array of single digit
# go through the array and insert commas at the right positions
# join the array and output a string
# return the string

# 1. Initial Solution
def separate_comma(input_integer)
	input_array=input_integer.to_s.split(//)
	counter=0
	output_string=""
	index=input_array.length-1
	while index>=0
		if counter%3 == 0 && counter!=0
			output_string=","+output_string
		end		
		output_string=input_array[index].to_s+output_string
		counter+=1
		index-=1
	end
	return output_string
end 


# 2. Refactored Solution



# 3. Reflection
# # What was your process for breaking the problem down? What different approaches did you consider?
# I first changed the integer into an array consisting each individual digit. Then I pulled each digit of the array from the end and added it into a string while keeping track of the number of digits that have been added. For every three digit that I added into the string, I would place a comma in the front, unless it's the beginning of the string.
# Was your pseudocode effective in helping you build a successful initial solution?
# Yes.
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I used the split method, which parses the integer into an array of individual digits. I did not have any difficulty, and it significantly changed the way my code works because without it I would have to first turn the integer into a string and go through each index in the string to push it into an array.
# How did you initially iterate through the data structure?
# I iterated through the data structure using a while loop.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# I did not find a better approach to refactor my initial solution. 