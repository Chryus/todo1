# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
#test = ['cat', 'dog', 'fish', 'fish']
 
def count(array)
	hash = Hash.new
	array.each do |item|
		hash[item] = array.select{|other_item| other_item == item}.size
	end
	hash
end
 
# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })