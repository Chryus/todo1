
class FakeHashWrapper

	def initialize
		@hash = {:blake => "the best"}
	end

	def [](key) #find a value
		@hash[key.to_sym]
	end

	def []=(key, value) #ruby magic the first key is pushed into the bracket
    @hash[key.to_sym] = value
  end

  def set_values(key, value)
  	@hash[key] = val
  end

	def find_values
		@hash.values.select { |value| value[0] = "a" }
	end

	
end

a = FakeHashWrapper.new



# Let's make an object that behaves like a hash today!
 
# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
# For example
 
# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"
 
# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.
 
# class FakeHashWrapper
 
 
 
# end