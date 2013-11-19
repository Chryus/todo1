require './yahtzee.rb'

describe "#roll_dice" do
	
	it "should return an array with 5 elements" do
		expect(roll_dice.length).to eq (5)
	end

	it "should return an array" do
		expect(roll_dice.class).to be (Array)
	end

	it "should return array values less than 7 and greater than zero" do
		roll_dice.each do |num| 
			expect(num).to be < 7
			expect(num).to be > 0
		end
	end

	it "should return an array with a sum less than equal to 30" do
		expect(roll_dice.reduce(:+)).to be <= 30
	end

	#winner check

end

