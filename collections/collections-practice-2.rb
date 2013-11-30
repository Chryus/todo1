require 'awesome_print'
require 'debugger'

# Collections Practice

# Finish the first collections assignment if you haven't already.

# Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.

# These problems should get progressively more difficult.

#Return true if every element of the tools array starts with an "r" and false otherwise.
	#all? returns true if all the elements meet the condition of the block
	tools = ["ruby", "rspec", "rails"]
	def check_first_letter(array)
	  array.all? do |element|
	    element[0] == "r"
	  end
	end
	#=>true

# Create a new array from the captain_planet array with all the elements that contain the letter "a".  
	#include? searches an element to see if it has a character
	
	captain_planet = ["earth", "fire", "wind", "water", "heart"]
	def check_word_for_a(array)
		array.select { |element| element.include?("a") }
	end

	#=> ["earth", "water", "heart"]

# Identify the first element in the stuff array that begins with the letters "wa".
  #find returns the first element for which the block is true
	def find_all_word_wa(array)
	  array.select { |element| element[0..1] == "wa" }
	end
	#find_all_words_wa(stuff)
  # => "wall"

# Identify all the elements in the stuff array that begins with the letters "wa".
	#select returns all the elements for which the block is true
	def find_all_word_wa(array)
	  array.select { |element| element[0..1] == "wa" }
	end

	#find_all_words_wa(stuff)
	# => ["wall", "wacky"]

# Remove anything that's not a string from an array. Use the method "class"  "blake".class

stuff = ["candy", :pepper, "wall", :ball, "wacky"]


# strings = []
# stuff.each do |element|
# 	if element.class == String
# 		strings << element
# 	end
# end
# ap strings
#refactor with delete_if

def delete(array)
	array.delete_if do |element|
		element.class != String
	end
end
#delete(stuff)

# Change the third letter of all strings in an array. Your solution should work for arrays that have mixed types of objects inside it.

def change_char(array, char)
	array.collect do |element|
			if element.class == String
				element[2] = char
			end
		end
end

change_char(stuff, "@")

#ap stuff


# Count the number of times each word appears in a string and store that data in a hash that has the word as the key and the count as the value.

string = "the flatiron is school is better than general better assembly"

def count_words(str)
	hash_words = {}
	str.split(" ").each do |elem| 
		if hash_words[elem].nil?
			hash_words[elem] = 1 
		else 
			 hash_words[elem] +=1 
		end
	end
 hash_words
end

#refactored to take a :count key in a new hash
def words_to_hash_count(string)
	hash = {}
	string.split(" ").each do |word|
		if hash[word].nil?
			hash[word] = {}
			#we have to create another hash here because a key can't be the value of a key. it has to be the key of its own hash 
			hash[word][:count] = 1
		else
			hash[word][:count] += 1
		end
	end
	hash
end

#words_to_hash_count(string)


# Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each hash with the number of times it appears.

array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def remove_dups_add_count(array)
	new_array = []
	array.each do |hash|
		hash.each do |key,value|
			if new_array[:name].nil?
				new_array << new_hash[:name] = value
			end
		end
	end
	ap new_array
end

remove_dups_add_count(array)




#repetion_count(array)

# array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# #becomes
# #[{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
# 	array2 = []	
# 	#1 iteration [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# 	array.each do |hash|
# 		array.each do |other_hash|
# 		#2 iteration [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# 			if hash == other_hash
# 				other_hash.merge!({:count => 1})
# 				array2 << other_hash
# 				other_hash.each do |key, value|
# 					:name => "blake"
# 					if hash[:name] == value
# 						other_hash[:count] += 1
# 					end
# 				end
# 			# else
# 			# 	hash[:count] += 1
# 			# 	array2 << hash
# 			end
# 		end
# 	end

def repetion_count(array)
  count = {}
  array.each do |hash|
    hash.each do |name, value|
			count[value] = array.collect{|other_item| other_item == hash}.size
    end
  end
  count
end

#Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.

array1 = [
       {
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }
]

array2 = [
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]
# becomes
# [
#        {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson"
#     },
#        {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs"
#     }
# ]
	
def move_first_name(array1, array2)
	become_array = []
	array1.each do |hash|
		array2.each do |hash|
			#{blake" => {:awesomeness => 10,:height => "74",:last_name => "johnson"}
    	hash.each do |key, hash_value|
    		#blake => {:awesomeness => 10,:height => "74",:last_name => "johnson"}
    		# ap hash_value[:first_name] = nil so
    			if hash_value[:first_name].nil? 
    		 	hash_value[:first_name] = key
    		 	become_array << hash_value
    		 end
    	end
    end
  end
  become_array
end

move_first_name(array1, array2)



#Return all hashes that have a value of "cool" for the :temperature key.

teachers_array = [
        {
               :name => "ashley",
        :temperature => "sort of cool"
    },
        {
               :name => "blake",
        :temperature => "cool"
    }
]

def look_for_cool(array)
	new_hash = {}
	array.each do |hash|
		hash.each do |key, value|
			if value == "cool"
			new_hash = hash
			end
		end
	end
	new_hash
end

look_for_cool(teachers_array)


#Convert the nested data structure from it's current structure
 
# schools = {
#   "flatiron school bk" => {
#     :location => "NYC",
#     :price => "free"
#   },
#   "dev boot camp" => {
#     :location => "SF"
#     :price => "a million dollars"
#   },
#   "dev boot camp chicago" => {
#     :location => "Chicago",
#     :price => "half a million dollars"
#   },
#   "general assembly" => {
#     :location => "NYC",
#     :price => "too much"
#   },
#   "some school in SF" => {
#     :location => "SF",
#     :price => "your soul"
#   }
# }
# #to a structure that organizes the schools by location.

# schools.each do |school, hash|
# 	ap school
# 	hash.each do |school, hash|
# 		#<"flatiron school bk", "dev boot camp">
# 		#ap hash
# 	 	# hash.each do |key, value|
# 	 	# 	ap key
# 	 	# 	ap value
# 	 	# end
# 	end
# end

