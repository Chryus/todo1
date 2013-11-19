require './armando-blkjk.rb'

describe "#deal" do
	
	it "should return a random number between 1 & 11" do
		expect(deal).to be < 11
	end

	it "should return a Fixnum" do
		expect(deal.class).to be (Fixnum)
	end
end

describe "#calculate" do

		it "should print 'Blackjack' if score = 21" do
		expect(calculate(21)).to be (nil)
		expect(calculate(22)).to be (nil)
	end

end


=begin
	it "should return an array with 5 elements" do
		expect(deal) do |rand_num|
			expect(randnum).to be < 11
	end
=end
