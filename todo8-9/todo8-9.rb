# Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, 
#appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.
 
# Post your links here!
 
# #pin #todos
require 'awesome_print'

class Deli

attr_accessor :line

def initialize
	@line = []
end

def take_a_number(name)
	num = line.length + 1
	line << "#{num}. #{name}"
end


end

sams = Deli.new
ap sams.take_a_number("Chris")


		