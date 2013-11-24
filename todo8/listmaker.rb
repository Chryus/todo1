# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.

# Run this test by typing `rspec list_maker_spec.rb` in your terminal.

# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

# def make_list(array)
# 	new_array = []
# 	array.each do |element|
# 		new_array << element.to_s
# 	end	
# 	new_array
# end
=begin
def make_list(array)
	num = 0
	new_array = []
	array.each do |element|
		num += 1
		new_array <<  "#{num}. #{element}"
	end
 new_array
end

#or each_with_index allows us to jettison the number
#variable

def make_list(array)
	new_array = []
	array.each_with_index do |element, index|
		new_array <<  "#{index+1}. #{element}"
	end
 new_array
end
=end

#or map_with_index will allow us to jettison counter too
#collect or map is good because it elimiates the need 
#to create a new array because collect&map 

def make_list(array)
	array.map.with_index do |element, index|
		"#{index+1}. #{element}"
	end
end

#make_list([1,2,3])




# example of testing for a class e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]
 #here instead of passing a paramter we are 
class Array
	def make_list
		#self is optional
	self.map.with_index do |element, index|
		"#{index+1}. #{element}"
	end
end

#when we do it inside the class array we are allowing
#ourselves to use dot notation on an object
#[1,2,3].make_list







