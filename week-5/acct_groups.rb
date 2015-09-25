# Release 1
# method accepts an input array
# method returns an array of strings

# assume all teams include three members. Divide the total number of people by 3, the last team takes remainder.
# calculate remainder
# calculate number of teams 
# create an empty output array
# each element of the array is a string of names members of a team.
# go through input array, and assign every three element into a string and push the string onto the output array.
# the last team can have three cases: no reminder, 1 remainder, or 2 remainder. Based on each case, add the corresponding number of members into the string and push the string.



def create_acct_group(input_array)
	number_population=input_array.length
	remainder=number_population%3
	number_of_teams=input_array.length/3
	output_array=[]
	for i in 0..(number_of_teams-2)
		output_array[i]=input_array[i*3].to_s+input_array[i*3+1].to_s+input_array[i*3+2].to_s
	end
	if remainder==0
		output_array[number_of_teams-1]=input_array[(number_of_teams-1)*3].to_s+input_array[(number_of_teams-1)*3+1].to_s
	elsif remainder==1
		output_array[number_of_teams-1]=input_array[(number_of_teams-1)*3].to_s+input_array[(number_of_teams-1)*3+1].to_s+input_array[(number_of_teams-1)*3+2].to_s+input_array[(number_of_teams-1)*3+3].to_s 
	else
		output_array[number_of_teams-1]=input_array[(number_of_teams-1)*3].to_s+input_array[(number_of_teams-1)*3+1].to_s+input_array[(number_of_teams-1)*3+2].to_s+input_array[(number_of_teams-1)*3+3].to_s+input_array[(number_of_teams-1)*3+4].to_s
	end
	p "there are #{number_of_teams} teams."
	p "the last team is"
	p output_array
end 

#driver code
# input=["a","a1","a2","a3","a4","a5","a6","a7","a8","a9"]
# create_acct_group(input)

# # What was the most interesting and most difficult part of this challenge?
# Planning and figuring out what the output should be is the mosting challenging part.
# # Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes.
# # Was your approach for automating this task a good solution? What could have made it even better?
# Yes. It could be randomized for broader applications.
# # What data structure did you decide to store the accountability groups in and why?
# array of string because it's simple.
# # What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# No.