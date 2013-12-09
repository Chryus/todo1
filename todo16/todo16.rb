# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
test = ['cat', 'dog', 'fish', 'fish']
 
def count(array)
	num = 0
	hash = Hash.new
	array.each_with_index { |item, index|
		hash[item] = index }
	hash
end
 
# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })