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

#refactor to allow player to ask as many times as they like
#add methods to separate concerns

def ask_play
	print "Heya Sam, wanna play Blackjack? (yes or no)? "
		if gets.chomp.downcase == "yes"
			return true
		else
			puts "goodbye"
		end
end

def deal_hand
	(rand(11) + 1) + (rand(11) + 1)
end

def hit
	rand(11) + 1
end

def play_blackjack
	play = ask_play
	hand = deal_hand
	card = hit
		while hand < 21 && play
			print "Heya Sam, you've got #{hand}. Wanna another hit, Sam (yes or no)? "
			want_hit = gets.chomp.downcase
		 		if want_hit == "yes"	
				hand += card
						if hand > 21
							puts "Gimme all your money, Sam. You lose!"
							play = "no"
						end	
				else want_hit == "no"
					puts "Gimme all your money, Sam. You lose!"
					play = "no"
				end		
		end
end

play_blackjack

#need to be able to check if there's a winner



