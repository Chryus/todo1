require './listmaker.rb'

describe "#make_list" do
	
  it "should return an array" do
    expect(make_list([1,3,5])).to be_a(Array)
  end

  it "return an array of string elements" do
  	expect(make_list([1,3,5])).to eq(["1","3","5"])
  end

  it "should return an array with an appended number, a period
  and a space to each element" do
  	expect(make_list(["ich", "ni", "san"])).to eq(["1. ich", "2. ni", "3. san"])
  end

end

  # it "returns the max number from an array" do
  # 	expect(make_list([1,3,5])).to eq(5)
  # end