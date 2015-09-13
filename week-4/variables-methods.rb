#!/bin/ruby

puts "What's your firstname?"
firstname=gets.chomp
puts "What's your middle name?"
middlename=gets.chomp
puts "What's your last name?"
lastname=gets.chomp

puts "Hello, "+firstname+" "+middlename+" "+lastname+"!!!"

puts "What's your favorite number?"
input=gets.chomp.to_i
input+=1
puts "Here is a better and bigger number:"+input.to_s

# How do you define a local variable?
# A local variable is defined by "variable_name=value"

# How do you define a method?
# A method is defined between "def method_name(parameters)" and "end"

# What is the difference between a local variable and a method?
# A local variable holds a value; A method holds information to process input value and returns another value

# How do you run a ruby program from the command line?
# By typing "ruby file_name.rb"

# How do you run an RSpec file from the command line?
# By typing "rspec spec_name.rb"

# What was confusing about this material? What made sense?
# The material is pretty clear and makes sense.
# Link to "Return a Formatted Address":
# [Return a Formatted Address](https://github.com/zinosama/phase-0/blob/master/week-4/address/my_solution.rb).
# Link to "Defining Math Methods":
# [Defining Math Methods](https://github.com/zinosama/phase-0/blob/master/week-4/math/my_solution.rb).
