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