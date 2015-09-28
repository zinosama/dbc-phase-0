# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:an array of strings

# Output:string

# Steps:
# check length of the input array, if length equals 0, raise argumenterror; otherwise, proceed to the next step.
# write sides method that check the length of the input array.
# wirte roll method that picks a random number between 0 and (length-1), than returns the value at the random index in the array. 

# Initial Solution

class Die
  def initialize(labels)
  	if labels.length==0
  		raise ArgumentError.new("Error: The input array is empty.")
  	else
  		@labels=labels
  	end
  end

  def sides
  	return @labels.length
  end

  def roll
  	random=Random.new
  	random_index=random.rand(0..(@labels.length-1))
  	return @labels[random_index]
  end
end



# Refactored Solution

# Didn't find anything to refactor.


# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# Not really. The last die class returns a random number from 1 to the value that's passed into it. This class returns the value at a random index in the input array that's between 0 and the length of the array minus 1.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# The two classes share a lot of similarities while performing completely different tasks. It would be very efficient if I could write general methods that can be reused in different applications.

# What new methods did you learn when working on this challenge, if any?
# N/A.

# What concepts about classes were you able to solidify in this challenge?
# N/A.