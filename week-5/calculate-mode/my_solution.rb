# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# # What is the input?
# an array
# # What is the output? (i.e. What should the code return?)
# another array
# # What are the steps needed to solve the problem?
# go through input array
# assign every element into a hash as the key and set initial value to 0.
# if the element already exists in the hash, increase the value by one.
# after going through every element in the array, go through the hash table and identify the keys with the highest value.
# if there are multiple keys with the highest value, return them in an array.
# otherwise, return the single key with the highest value in an array.

# 1. Initial Solution
def mode(input_array)
	primary_hash=Hash.new
	max_hash=0
	for i in 0..input_array.length-1
		if primary_hash.has_key?(input_array[i])
			primary_hash[input_array[i]]+=1
			if primary_hash[input_array[i]]>max_hash
				max_hash=primary_hash[input_array[i]]
			end
		else 
			primary_hash[input_array[i]]=0
		end
	end
	result_array=[]
	primary_hash.each{|key,value| if value==max_hash
		result_array.push(key)
	end
	}
	return result_array
end

# 3. Refactored Solution
# Didn't find any better approach to refactor

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# I decided to use a hash because it allows me to store key/value pairs.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# Yes.

# What issues/successes did you run into when translating your pseudocode to code?
# I wasn't sure about how to embody some parts of the pseudocode.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# I used hash's each method to go through the hash and look for specific key/value pairs. It was not difficult to implement.