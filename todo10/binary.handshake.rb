# # Binary Secret Handshake
 
# > There are 10 types of people in the world: Those who understand binary, and those who don't.
 
# You and your fellow flatirons are of those in the "know" when it comes to binary decide to come up with a secret "handshake".
 
# ```
# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump
 
 
# 10000 = Reverse the order of the operations in the secret handshake.
# ```
 
# Write a program that will convert a binary number, represented as a string (i.e. "101010"), and convert it to the appropriate sequence of events for a secret handshake.
 
 
# ```
# handshake = SecretHandshake.new "1001"
# handshake.commands # => ["wink","jump"]
 
# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# ```
 
# The program should consider strings specifying an invalid binary as the value 0.

 
class SecretHandshake

  attr_accessor :number

  def initialize(number)
    @number = number
  end

# we don't need this because 
# def split_num
#   num = number.split(//)
# end

  def commands
    hand_code = []
    #split = number.split(//)
    
    # split_num.each do |char|
      
      if number[-1] == "1"
          hand_code << "wink"
      end
      
      if number[-2] == "1"
        hand_code << "double blink"
      end

     if number[-3]  == "1"
       hand_code << "close your eyes"
     end

     if number[-4] == "1"
        hand_code << "jump"
    end

    if number[-5]=="1"
      hand_code.reverse!
    end
   p hand_code
  end

end

handshake = SecretHandshake.new("10011")

handshake.commands

#Refactor as a case statement