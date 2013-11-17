#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

def messages
	[
	"Study hard young Rubywan, and you shall succeed.",
	"The hardest things in life return the gretest rewards.",
	"Don't talk to me, I'm busy",
	"Go adopt a bunny. It will make you happy.", 
	"You shall find your answer in the Ruby documentation",
	"Maybe", 
	"Read Moby Dick and ask me again.", 
	"Whew eeeeeee", 
	"Don't go chasin' waterfalls. Please stick to the rivers and the lakes that you're used to." 
	]
end

def shake
messages.sample
end

def ask_play
	print "Hello Rubywan. Do you want to shake the magic eight ball (yes or no)? "
		if gets.chomp.downcase == "yes"
			return true
		else
			puts "goodbye"
		end
end

def ask_question
	print "Very well young Rubywan. Ask your question. "
	gets.chomp
end

def play_eight_ball
	message = shake
	play = ask_play
	while play
		question = ask_question
		puts message
		play = ask_play
	end
end

play_eight_ball

