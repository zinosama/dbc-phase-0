# Your Names
# 1)zino  
# 2)Messa 

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #array that specifies the ingredients needed to make each item.
  # error_counter = 3 #number of check before throwing an error

  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     p error_counter += -1
  #   end
  # end
#the left part of this condition will always evaluate to nil, and therefore, if the right side also evaluates to nil, the below condition throws an error. The right side will only evaluate to nil if the item is not among the library array.
  # if error_counter > 0
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size
#serving_size returns the number of ingredients needed to make one item of interest.
#serving_size_mod returns the number of surplus material.
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{serving_size_mod} cookies"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?

# Did you learn any new methods? What did you learn about them?
# Yes, I learn has_key?
# What did you learn about accessing data in hashes? 
# That the each method will return a key/value pair.
# What concepts were solidified when working through this challenge?
# The way to access data in hash is reaffirmed.