require 'ap'
#require './exceptions.rb'

class TriangleError < StandardError
end

class Triangle

	attr_reader :a, :b, :c

def initialize(a, b, c)
	@a = a
	@b = b
	@c = c
end

def test_error
	if a + b <= c || b + c <= a || a + c <= b
		raise TriangleError
	elsif a <= 0 || b <= 0 || c <= 0
		raise TriangleError
	end
end

def kind
	if test_error
	elsif a == b && b == c
		:equilateral
	elsif (a == b && a != c) || (a == c && c != b) || (b == c && b != a)
		:isosceles
	elsif a != b && b != c && a != c
		:scalene
	end
end


end

# max = Triangle.new(2,2,2)
# ap max.kind