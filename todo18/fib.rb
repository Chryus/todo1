# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1
 
def fibo_finder(n)
	a = 0
	new_array = []
		if new_array.empty?
			new_array << 0
			fib = new_array[n]
		elsif new_array.size == 1
			new_array << (a + 1)
			fib = new_array[-1]
		elsif new_array.size >= 2
			new_array << (new_array[-1] + new_array[-2])
			#new_array << (a + 1)
			fib = new_array[1]
		end
	p
end




# the sum of the previous two numbers
# 0 1 1 2 3 5 8 13 21