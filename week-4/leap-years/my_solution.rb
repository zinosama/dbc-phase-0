# Leap Years

# I worked on this challenge [by myself, with: Ian].


# Your Solution Below
def leap_year?(input)
	if input % 4 ==0 && input%100==0 && input%400!=0
		return false
	elsif input%4==0
		return true
	else
		return false
	end
end