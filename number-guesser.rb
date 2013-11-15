=begin MINIMUM REQUIREMENTS
Modify your number guesser to ask the user to guess again if they are wrong.
The game should stop when they guess correctly.
 
CHALLENGE:
- if a user wins give them the option to play the game again
- tell the user if their guess  are 'higher' or 'lower' than the correct number
- tell the user if they are getter warmer or colder depending on if their newest guess is closer or further from the answer than their last guess
- make it so that the secret number is random
 
DELIVERABLE:
This should be in the same repo you did your original number guesser.
=end

  begin
  	print "Heya. Please enter a number between 1 & 100: "
	number_guess = gets.chomp.to_i
	number = rand(100) + 1
  end until number_guess == number






