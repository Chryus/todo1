#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  
# A player gets dealt two cards which have values between 1-11.  
# After they get dealt two cards you should show them the total score of their cards and 
# ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  
# After each hit you should ask if they want to hit or stay and display the total value of their cards. 
# If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

# #Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

# ##Challenge
# #After successfully completing the previous game (there should be a commit with a working version of this game), 
# alter the game so that a player can "hit" as many times as they want.


def deal
  rand(1..11)
end

def question
  puts "Do you want to play(y/n)"
end

def calculate score, hit = 0
  if score == 21
    puts "BlackJack"
  elsif score > 21 || hit == 3
    puts "You lose"
  end
end

puts "Hello Welcome to Blackjack Game"
question()
choice = gets.chomp 

while choice == 'y'
  hit = 0
  card1 = deal()
  card2 = deal()
  score = card1 + card2
  
  puts "Card1: #{card1}"
  puts "Card2: #{card2}"
  puts "Score: #{score}"
  puts "Current hit: #{hit}"
  calculate(score)
  

  if score == 21
    hit = 2
  end

  while hit < 2 && score < 21
    puts "Do you want to hit or stay?"
    p1_res = gets.chomp
    if p1_res == 'hit'
      hit_card = deal()
      score = score + hit_card
      calculate(score, hit)
    else
      break
    end
    hit = hit + 1
    puts "current score: #{score}"
    puts "current hit: #{hit}"
  end

  if score < 21
    puts "You lose"
  end

  question()
  choice = gets.chomp
end

puts "Good-bye, Thank you for playing"