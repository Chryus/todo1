require './listmaker.rb'

describe "#make_list" do
	
# #this is not something you would generally want to do
#  it "should return an array" do
#    expect(make_list([1,3,5])).to be_a(Array)
#  end
  
  it "return an array of string elements" do
  	expect(make_list([1,3,5])).to eq(["1. 1", "2. 3", "3. 5"])
  end

  it "should return an array of strings in a numbered list" do
  	expect(make_list([2,nil,5])).to eq (["1. 2", "2. ", "3. 5"])
  endyy

  it "should return an array with an appended number, a period
  and a space to each element" do
  	expect(make_list(["ich", "ni", "san"])).to eq(["1. ich", "2. ni", "3. san"])
  end

end

#you could say expect .... .to be_a type of(Boolean) or (Interger)

describe Array, "make_list"