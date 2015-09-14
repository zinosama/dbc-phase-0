# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
	if list_of_words.length==0
		return nil
	else
		counter=0
		min_String=list_of_words[0]
		min_length=list_of_words[0].length
	  	for counter in 0..(list_of_words.length-1)
		  if list_of_words[counter].length<min_length
		  	min_length=list_of_words[counter].length
		  	min_String=list_of_words[counter]
		  end
		end
		return min_String
	end
end