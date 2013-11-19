def first_even(array)
	array.each do |item|
		if item%2 == 0
			return item
			break
		end
	end
  #code goes here
end


