#prints numbers 1-100
#when the number is divisible by 3, say fizz
#when the number is divisible by 5 say buzz
#when the number is divisible by 3 and 5 say fizzbuzz

i = 1
while i < 101
	if i % 3 == 0 
		puts "fizz"
	elsif i % 5 == 0
		puts "buzz"
	elsif i % 3 == 0 && i % 5 == 0 
		puts "fizzbuzz"
	else
		puts i
	end
	i = i + 1
end
