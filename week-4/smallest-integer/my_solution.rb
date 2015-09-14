# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums.length==0
  	return nil
  else
  	counter=0
  	min=list_of_nums[0]
  	for counter in 0..(list_of_nums.length-1)
  		if list_of_nums[counter]<min
  			min=list_of_nums[counter]
  		end
  	end
  	return min
  end 
end