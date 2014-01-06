# Instructions:
# Each with object works much like inject. Use each_with_object to return an array containing one reversed string for each string that has an even number of characters.
 
# Code:
def even_sum(even_sum)
  arr.each_with_object([]) {|str, array| {
  if str.even?
  	array << str.reversed
  end
end
 
even_sum(["cat", "dog", "bird", "fish"]) #=> ["drib", "hsif"]