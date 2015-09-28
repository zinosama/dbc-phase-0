# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# initialize
# Input: an integer
# Output: n/a
# Steps: create an instance variable @answer with the input integer stored.
# create an instance variable that tracks the last guess and an instance variable that tracks whether the game has been solved.

#guess
# input: an integer
# output: symbol
# steps: compare the input with @answer and return :low if smaller; :correct if same; :high if larger

# solved?
# input: n/a
# output:true/false
# checks for 

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
  end

  def guess(guess)
  	@guess=guess
  	if @guess>@answer
  		@result=false
  		return :high
  	elsif @guess==@answer
  		@result=true
  		return :correct
  	else
  		@result=false
  		return :low
  	end
  end

  def solved?
  	if @result
  		return true
  	else
  		return false
  	end
  end

end

# Refactored Solution
# n/a

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# For example, there are many types of apple. An apple may be red, green, or yellow. These different attributes all apply to apple. However, different attribute applies to each different apple. Instance varialbe allows developer to keep track of common attributes with different values of an object.

# When should you use instance variables? What do they do for you?
# When variables are created from a class and needs to retain specific values or methods to the variable.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# No. Flow control can be done by evaluating conditions in if/for/while and other loops. When a condition is satisfied/unsatisfied, the loop breaks to execute following blocks of code.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Because the return values do not need to be changed, and therfore immutable symbols save memory and make the program run faster.