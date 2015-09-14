# Factorial

# I worked on this challenge [by myself, with: Ian].

# Take in the number
# result = 1
# While number is > 0, multiply number by result and then set number to (number - 1).
# When number reaches 0, return result.

# Your Solution Below
def factorial(number)
	 result = 1
	 while number > 0
	 	result = number * result
	 	number = number - 1
	 end
	 return result
end