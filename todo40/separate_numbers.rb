#Separate numbers with a comma each three digits.
 
def separate_with_comma(n)
  temp = []
  modify = n.to_s.reverse
  if modify.length < 3
    modify
  else
    counter = 0
    modify.each_char do |char|
      if counter % 3 == 0 && counter != 0
        temp << char << ","
        counter += 1
      else
        temp << char
      end
      temp
    end
  end
end
 
# separate_with_comma(1) #=> "1" 
# separate_with_comma(1000) #=> "1,000" 
# separate_with_comma(10000) #=> "10,000"
