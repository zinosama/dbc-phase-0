# Release 1
# new list method will return a new hash
# add method will take a hash, an item, and a quantity and insert the new item into the hash.
# remove method removes the key and its corresponding value from the hash.
# update method updates the key and its corresponding value from the hash.
# print method prints the list.

# Release 2 and 3
def new_list
	new_array=Hash.new
end

def add(input_hash,item,quantity)
	input_hash[item]=quantity
	p "item added"
end 

def remove(input_hash,item)
	input_hash.delete(item)
	p "item deleted"
end

def update(input_hash,item,quantity)
	input_hash[item]=quantity
	p "item updated"
end 

def print(input_hash)
	p input_hash
end 

input=""
user_hash=new_list()
while input!="exit"
	puts "To start over, type 'new'; to add item to your list, type 'add'; to remove item from your list, type 'remove'; to update, type 'update'; to see the list, type 'print'; to exit, type 'exit'"
	input=gets.chomp
	if input=="new"
		user_hash=new_list()
	elsif input=="add"
		puts "what item?"
		input_item=gets.chomp
		puts "what quantity"
		input_quantity=gets.chomp
		add(user_hash,input_item,input_quantity)
	elsif input=="remove"
		puts "what item"
		input_item=gets.chomp
		remove(user_hash,input_item)
	elsif input=="update"
		puts "what item"
		input_item=gets.chomp
		puts "what quantity"
		input_quantity=gets.chomp
		update(user_hash,input_item,input_quantity)
	elsif input=="print"
		print(user_hash)
	elsif input=="exit"
	else
		puts "error, invalid command"		
	end 
end

# What did you learn about pseudocode from working on this challenge?
# Having a clear pseudocode speeds up the coding process and avoid wasting time.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# I used hash because it's easy to identify key/value pairs in a hash.

# What does a method return?
# the last line of code

# What kind of things can you pass into methods as arguments?
# any type of object.

# How can you pass information between methods?
# by storing information into a variable in the global scope and pass along the variable.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I'm unsure if the solution that I provided is the intended solution.		
