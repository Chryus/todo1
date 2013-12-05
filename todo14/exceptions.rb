require './todo14.rb'

class Exceptions < 

TriangleError = []

 def initialize
		TriangleError << self
 end

 def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do kind(0, 0, 0) end
    # assert_raise(TriangleError) do k(3, 4, -5) end
    # assert_raise(TriangleError) do triangle(1, 1, 3) end
    # assert_raise(TriangleError) do triangle(2, 4, 2) end
 end

end