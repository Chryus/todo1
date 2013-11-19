# Collections Practice
teachers = ["blake", "ashley", "scott"]
#1. sort the following array in ascending order
 # ["blake", "ashley", "scott"] 
teachers.sort

#2. sort the following array in descending order
#  ["blake", "ashley", "scott"]
teachers.sort! {|a,z| z <=> a}

or 

teachers.sort.reverse

#3. put the following array in reverse order
puts teachers.reverse

#4. grab the second element in the array
 # ["blake", "ashley", "scott"]
puts teachers[1]
puts"...." 

#5. print each element of the array to the console
#  ["blake", "ashley", "scott"]
teachers.each { |teacher| print teacher}
#or
puts teachers
puts"...." 

#6. create a new array in the following order
#  ["blake", "ashley", "scott"] 
#  should transform into
#  ["blake", "scott", "ashley"]
new_array = teachers.values_at(0, 2, 1)
puts new_array

#or
teachers = ["blake", "ashley", "scott"]
newer_array = teachers
ashley = new_array.pop
newer_array.insert(1, ashley)
puts new_array

#or
teachers = ["blake", "ashley", "scott"]
newer_array = teachers.insert(1, teachers.delete_at(2))
puts newer_array

#or
or newest_array = teachers.reverse.rotate(2)
puts newest_array

#7. using the following array create a hash where the elements in the array are 
#the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
# ["blake", "ashley", "scott"]
#convert array to hash where key = elements & values = element with 3rd char converted to $

#use two methods to practice getting methods to pass values to each other


teachers = ["blake", "ashley", "scott"]
hash = {}
  teachers.collect do |name|
    hash[name] = name
    hash[name][2] = "$" 
    #hash[name][2] = "$"
    #hash[name][-1] = "!"
    #hash[name][-1] = "9"
  end
puts hash

teachers = ["blake", "ashley", "scott"]
hash = {}
teachers.each do |name|
  #here we're saying hash[name] is key
  #the value is after the = sign
  hash[name] = name[0..1] + "$" + name[3..name.length]
  puts hash
end





#8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers 
#greater than 10 or less than 10 in the following array

def group_array
  array = [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
  array.group_by do |num|
    num < 10
  end
end
group_array

def change_key
  hash1 = group_array
  hash2 = mappings = {false=>"greater_than_10", true=>"less_than_10"}
  new_hash = Hash[hash1.map {|k, v| [hash2[k], v] }]
  puts new_hash
end
change_key


array = [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
num_hash = {
  :greater_than_10 => [],
  :less_than_10 => []
}
  array.each do |num|
    if num > 10
      num_hash[:greater_than_10] << num
    else
      num_hash[:less_than_10] << num
    end
  end
puts num_hash

#or

#compact removes the nils
my_number_array = [100, 1000, 5, 2, 3, 15, 1, 1, 100]
my_number_hash = { 
  :greater_than => my_number_array.collect { |x| if x > 10 }.compact
  :less_than => my_number_array.collect { |x| if x < 10}.compact
}

#refactor using ternary operator
num_hash = {
  :greater_than_10 => [],
  :less_than_10 => []
}

[100, 1000, 5, 2, 3, 15, 1, 1, 100 ].each do |number| 
  number > 10 ? num_hash[:greater_than_10] << number : num_hash[:less_than_10] << number
end

puts num_hash


#9. find all the winners and put them in an array


winners = []
  teachers = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
    teachers.each { |k, v| value == "winner" ?  winners << k : "nil" }
  
puts winners

#10. add the following arrays
#  [1,2,3] and [5,9,4]
def add_arrays(array1, array2)
  puts array1 << array2
end

#or
a = [1,2,3]
b = [5,9,4]
add_arrays(a, b)
#or
a = [1,2,3]
b = [5,9,4]
a.concat(b)
#or
a|b


#11. find all words that begin with "a" in the following array
#  ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
def find_words
  array = ["apple", "orange", "pear", "avis", "arlo", "ascot"]
  array.each do |fruit|
   if fruit[0] == "a"
     puts fruit
   end
  end
end

find_words

#or each vs select
stuff = ["apple", "orange", "pear", "avis", "arlo", "ascot"]
container = []
stuff.each do |item|
  if item[0] == "a"
    container << item
  end
end
puts container
#or select which simplifies each!

stuff = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]

a_words = stuff.select {|item| item[0]=="a"}

#or with reg expresssions
stuff = ["apple", "orange", "pear", "avis", "arlo", "ascot"]
container = []
stuff.each do |item|
  if item.match == (/^a/i)
    container << item
  end
end
puts container




array = ["apple", "orange", "pear", "avis", "arlo", "ascot"]
def find_words2(array)
  array.each do |fruit|
   if fruit[0] == "a"
     puts fruit
   end
  end
end

#11. sum all the numbers in the following array

  a = [11,4,7,8,9,100,134]
  sum = 0
  a.each do |num|
    sum += num
  end
  puts sum 

#examples from class
#each time we go ruby is going to keep track of the sum
#we tell it to start at zero
#If you specify a block, then for each element in enum (i.e, array) the block is passed an 
#accumulator value (sum) and the element. Whatever we do in here becomes the new value of sum. 
#The final value of sum is the return value!
[1,2,3].reduce(0) do |sum, number| 
sum + number
end
=begin this does
0+1
1+2
3+3
=end
#return value is the final value of sum = 6


#If you specify a symbol instead, then each element in the collection 
#will be passed to the named method of memo.
  a = [11,4,7,8,9,100,134]
  puts a.reduce(:+)
  #or a.reduce(0) {|sum, item| sum + item}
  puts "....."


#collect returns a new array based on the block (it has an embedded .each iterator)
[1,2,3].collect do |element| 
element + 1
end

#but see count, which returns the number of items in an array
a = [11,4,7,8,9,100,134]
def add_array(a)
  puts a.count
end
add_array(a)



#12. Add an "s" to each word in the array except for the 2nd element in the array?
def add_s
  a = ["hand","feet", "knee", "table"]
  a.each do |part|
    next if part == a[1]
    part = part << "s"
  end
  puts a
end

add_s 


#CHALLENGE
 
#word count
 
story = "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"
array = story.split
word_count = Hash.new(0)

array.each do |word|
  word_count[word] += 1
end

puts word_count


#Count how many times each word appears in my story.
#Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

#song library
 
#convert the following array of song titles
  
#  ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

#to a nested hash of the form
#{:artist1 => :songs => [], :artist2 => :songs => []}
#[]




#2. 

