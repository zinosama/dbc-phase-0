# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Ian].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers 
# Output: Sum of those numbers
# Steps to solve the problem.
#0.1: create a counter variable
#0.1.1: create a result variable
#0.2: set it to 0
#0.3: use a FOR loop and increment counter by 1 until reaches array.length
#0.4: inside the FOR loop: add array[counter] to result
#0.5: return result

# 1. total initial solution
# def total(inputArray)
# 	counter=0
# 	result=0
# 	while counter<inputArray.length
# 		result=result+inputArray[counter]
# 		counter=counter+1
# 	end
# 	return result
# end 


# 3. total refactored solution
def total(inputArray)
	inputArray.inject{|result,x| result + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of Strings
# Output: a String
# Steps to solve the problem.
# 4.1: create a counter variable
# 4.2: create a result variable
# 4.3: initialize result to "" and counter to 0
# 4.4: WHILE counter smaller than array.length, add array[counter] to result and increment counter by 1

# 5. sentence_maker initial solution
# def sentence_maker(sentence)
# 	counter = 0
# 	result = ""
# 	while counter < sentence.length - 1
# 	result = result + sentence[counter].to_s + " "
# 	counter = counter + 1
# 	end
# 	result = result.capitalize! + sentence[counter].to_s + "."
# 	return result
# end

# 6. sentence_maker refactored solution
def sentence_maker(sentence)
	result=sentence.join(" ")
	result=result.capitalize!+"."
end
