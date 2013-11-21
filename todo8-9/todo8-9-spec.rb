require './todo8-9.rb'
sams = Deli.new
describe Deli do
	describe "#take_a_number" do
	  
	  it "takes a customer's name & append their number to their name and adds them to the line" do
	  	expect(sams.take_a_number("Chris")).to eq(["#{line.length + 1}". Chris"])
	  end

	end
end