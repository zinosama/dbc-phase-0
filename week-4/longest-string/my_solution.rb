# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  	if list_of_words.length==0
		return nil
	else
		counter=0
		max_String=list_of_words[0]
		max_length=list_of_words[0].length
	  	for counter in 0..(list_of_words.length-1)
		  if list_of_words[counter].length>max_length
		  	max_length=list_of_words[counter].length
		  	max_String=list_of_words[counter]
		  end
		end
		return max_String
	end
end



