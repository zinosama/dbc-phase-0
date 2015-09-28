  # RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map!{|element| 
  if element.is_a?(Array)
    element.map!{|new_element| new_element+=5}
  else
    element += 5
  end
    }
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.flatten!.map!{|element| element + "ly"}
p startup_names

# What are some general rules you can apply to nested arrays?
# Access them in the order they are nested.

# What are some ways you can iterate over nested arrays?
# each, map, collect

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I found flatten and map!. flatten is a good method because it unfolds all the different levels of sub-arrays inside an array and allows easy access to each element through map.