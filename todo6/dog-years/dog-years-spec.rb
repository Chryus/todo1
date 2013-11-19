require './dog_years.rb'

#example of a test for fizzbuzz
describe "#age_in_years" do
	#example with a parameter of 75
	it "should return age" do
		expect(age_in_years(15)).to eq (15)
	end
end

describe "#age_in_days" do
	#example with a parameter of 75
	it "should return the the product of age and 365" do
		expect(age_in_days(2)).to eq (730)
	end
end

describe "#age_in_dog_years" do
	#example with a parameter of 75
	it "should return the product of age and 7" do
		expect(age_in_dog_years(6)).to eq (42)
	end
end

#describe "#age_in_years"
	#example with a parameter of 13
	#it "should return buzz when number mod 5 is 0" do
	#	expect(fizzbuzz(10)).to eq("buzz")
	#end