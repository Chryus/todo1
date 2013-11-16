#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game. A player gets dealt two cards which have values between 1-11.  
#After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay.
#A player is allowed to "hit" up to two times.  
#After each hit you should ask if they want to hit or stay and display the total value 
#of their cards. If they don't want to hit, and they are not at 21 they lose.  
#Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), 
#alter the game so that a player can "hit" as many times as they want.


#card1 = rand(11) + 1
#card2 = rand(11) + 1
#puts card1

def blackjack
hand = (rand(11) + 1) + (rand(11) + 1)
print "Heya Sam, you've got #{hand}. Wanna another hit, Sam?"
player_answer = gets.chomp.downcase
 
 	if player_answer == "yes"
	hand += rand(11) + 1
		if hand > 21
			puts "Gimme all your money, Sam. You lose"
		else
			print "Heya Sam, you've got #{hand}. Ya feelin' lucky ?"
			player_answer = gets.chomp.downcase
				if player_answer == "yes"
			    hand += rand(11) + 1
					if hand > 21
						puts "Gimme all your money, Sam. You lose"
					else
						puts "You've got #{hand}! You win, Sam!!!"
					end
				end
		end
	elsif player_answer == "no" && hand < 21
		puts "You lose Same. Gimme all your money."
	end
end
blackjack




