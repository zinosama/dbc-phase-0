# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  length_1=array_1.length
  for counter in length_1..(length_1+array_2.length-1) 
  	array_1[counter]=array_2[counter-length_1]
  end
  return array_1
end