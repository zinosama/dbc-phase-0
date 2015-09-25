# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: a number
# Output: a random number between 1 and input
# Steps:



# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     if sides<1
#     	raise ArgumentError.new("Side has to be larger than 1")
#     else
#     @sides=sides
# 	end
#   end

#   def sides
#     # code goes here
#     return @sides
#   end

#   def roll
#     # code goes here
#     random=Random.new
#     output=random.rand(1..@sides)
#     return output
#   end
# end



# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides<1
    	raise ArgumentError.new("Side has to be larger than 1")
    else
	    @sides=sides
	end
  end

  def sides
    return @sides
  end

  def roll
    random=Random.new
    output=random.rand(1..@sides)
    return output
  end
end






# 4. Reflection

# What is an ArgumentError and why would you use one?
# An ArgumentError occurs when user passes in invalid argument to a method. You would use it to ensure only valid arguments are passed into your method; otherwise, the flow of execution should be halted to provide user with a warning.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I implemented a constructor, an inspector, and an execution method. I leaned about Random class while implementing them.

# What is a Ruby class?
# A Ruby class is a blueprint from which instance objects can be created.

# Why would you use a Ruby class?
# A Ruby class allows the construction of instane objects.

# What is the difference between a local variable and an instance variable?
# A local variable is erased when the containing method ends. An instance variable is erased when the instance object is erased.

# Where can an instance variable be used?
# Inside any instance object.