require './fizzbuzz'

#example of a test for fizzbuzz
describe "#fizzbuzz" do
	#example with a parameter of 75
	it "should return fizzbuzz when number mod 15 is 0" do
		expect(fizzbuzz(75)).to eq ("fizzbuzz")
	end
	#example with a parameter of 13
	it "should return buzz when number mod 5 is 0" do
		expect(fizzbuzz(10)).to eq("buzz")
	end

	it "should return fizz when number mod 3 is 0" do
		expect(fizzbuzz(9)).to eq("fizz")
	end

	it "should return number when number is not divisible by 3 or 5" do
		expect(fizzbuzz(13)).to eq(13)
	end

	#it "should return invalid if number is not an integer" do
	#	expect(fizzbuzz("poop")).to eq("invalid entry")
	#end
end
#we are testing parameters against expectations, we are testing named 
#blocks of code i.e., methods


#what do we test an why? 
#how many examples do we need. 
#if i have a method and I call it this parameter
#it should return this value
#kind of like a function, every time you put the same
#value in, you should get the same result