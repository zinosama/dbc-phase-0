# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# input includes an array, a miminum size, and an optional parameter that specifies the padding content.
# What is the output? (i.e. What should the code return?)
# output is a (new) array
# What are the steps needed to solve the problem?
# check the size of the input array
# if equal to or smaller than minimum size, return the array as is.
# if larger than minimum size, pad the array with the third parameter. If the third parameter is not available, pad the array with nil.
# return the array.

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length>=min_size
  	return array 
  else 
    while array.length<min_size
      array[array.length]=value
    end     
  	return array
  end 
end

# def pad(array, min_size, value = nil) #non-destructive
#   if array.length>min_size
#   	new_array=[]
#   	for i in 0..array.length-1
#   		new_array[i]=array[i]
#   	end
#   	return new_array 
#   else 
#   	new_array=[]
#   	for i in 0..array.length-1
#   		new_array[i]=array[i]
#   	end  	
#   	while new_array.length<min_size
#   		new_array[new_array.length]=value
#   	end 
#   	return new_array
#   end 
# end

# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  if array.length>min_size
    new_array=Array.new(array)
    return new_array 
  else 
    new_array=Array.new(array)
    while new_array.length<min_size
      new_array[new_array.length]=value
    end 
    return new_array
  end 
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# Yes.
# # Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes. No difficulty.
# # Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Yes. Because I followed my pseudocode, and every step worked as intende.
# # When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes.
# # How readable is your solution? Did you and your pair choose descriptive variable names?
# Yes. Very readable.
# # What is the difference between destructive and non-destructive methods in your own words?
# The destructive method returns the original array while the non-destructive method returns a new array.