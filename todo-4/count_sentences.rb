# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

class String
  def count_sentences (string)
  	string.each do |words|
  		words.each do |word|
  		  if word[-1] == "."
  		    counter += 1
  		    puts counter
  		  end
  		end 
    end
  end
count_sentences("Hi my name is Chris. I am from Chicago. I like anarchist trannies.")
 