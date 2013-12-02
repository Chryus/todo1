# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'awesome_print'

hash = {:blake => 500, :ashley => 2, :adam => 1}

def key_for_min_value(hash)
	array = []
 	hash.each do |key, value|
	 	array << value <=> value
	end
	ap array.sort!
	ap hash.key(array[0])
end

key_for_min_value(hash)

