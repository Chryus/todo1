# instructions: implement Array.uniq

require 'ap'
require 'debugger'

array = [1,2,3,5,5,2,2]

class Array

  def uniq
  	#debugger
  	new_array
  	self.delete_if { |index| index == index }
  	#puts "hi"
  	return new_array
  end

end

[1,2,3,5,5,2,2].uniq