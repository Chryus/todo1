#prints numbers 1-100
#when the number is divisible by 3, say fizz
#when the number is divisible by 5 say buzz
#when the number is divisible by 3 and 5 say fizzbuzz
=begin
1.upto(100) do |i|
		if i % 15 == 0
			puts "fizzbuzz"
		elsif i % 3 == 0 
			puts "fizz"
		elsif i % 5 == 0
			puts "buzz"
		else
			puts i 
		end
end
=end

def fizzbuzz(number)
		if number % 15 == 0
			"fizzbuzz"
		elsif number % 3 == 0 
			"fizz"
		elsif number % 5 == 0
			"buzz"
		else
			number
		end
end




