# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Zino, Choi].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: A 16-digit number
# Output: True/False value
# Steps:
# Turn input number into a String, and then into an array using split
# if the array length isn't 16, raise argumenterror
# Find the second to last index of the array
# double every other number until we reach index 0
# go through the array:
# for any value that's larger/equal to 10, we turn that into sum of the digits
# calculate sum of all values
# divide the sum by 10
# if remainder equals 0, return true; else return false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(input)
    @input=input.to_s.split('')
    if @input.length !=16
      raise ArgumentError.new("Your number is not 16-digit")
    end
  end
  
  def double
    start=@input.length-2
    while start>=0
      @input[start]=(@input[start].to_i)*2
      start-=2
    end
  end
  
  def sum
    @sum=0
    for i in 0..(@input.length-1)
      if @input[i].to_i >=10
        surplus=@input[i].to_i-10
        @sum=@sum+surplus+1
      else
        @sum=@sum+@input[i].to_i
      end
    end
  end
  
  def check_card
    double
    sum
    if @sum%10 == 0
      return true
    else 
      return false
    end 
  end
  
end

# Refactored Solution
# nothing to be Refactored


# Reflection
# What was the most difficult part of this challenge for you and your pair?
# We followed the instruction and everything was pretty easy.

# What new methods did you find to help you when you refactored?
# split

# What concepts or learnings were you able to solidify in this challenge?
# the use of instance variables and methods