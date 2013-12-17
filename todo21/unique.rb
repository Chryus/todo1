# instructions: implement Array.uniq

require 'ap'

array = [1,2,3,5,5,2,2]

class Array

  def uniq
  	delete_if { |index| index == index }
  end

end

ap [1,2,3,5,5,2,2].uniq