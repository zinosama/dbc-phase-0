#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
	attr_reader :name
	def initialize
		@name='zino'
	end
end


class Greetings
	def initialize
		@nameData=NameData.new
	end

	def hello
		p "Hello "+@nameData.name+"! How wonderful..."
	end
end

greet=Greetings.new
greet.hello

#Release 1

# Reflection
# What are these methods doing?
# Reading and writing into instance variables in the class.

# How are they modifying or returning the value of instance variables?
# By passing in input through parameter and changing instance variables of the class.

#Release 2

# What changed between the last release and this release?
# The reader method what_is_age is replaced by 'attr_reader :age'

# What was replaced?
# The reader method what_is_age is replaced.

# Is this code simpler than the last?
# Yes.

#Release 3
# What changed between the last release and this release?
# The writer method change_my_age is replaced by 'attr_writer :age'

# What was replaced?
# The writer method change_my_age is replaced

# # Is this code simpler than the last?
# # Yes.

# #Release 6
# What is a reader method?
# A method that accesses information in instance variables from outside class.

# What is a writer method?
# A method that changes informaiton in instance variables from outside class.

# What do the attr methods do for you?
# All instance variables to be accessed/changed from outside the class.

# Should you always use an accessor to cover your bases? Why or Why not?
# No. Because it introduces secruity concerns and can complicate debugging process.

# What is confusing to you about these methods?
# N/A.