2.0.0p247 :001 > 1 + 1
 => 2
2.0.0p247 :002 > 1.+(1)
 => 2
#it's only evaluates the first elements that aren't equal, once it reaches element that are
equal it stops.
1 <=> 3
 => -1
2.0.0p247 :003 > [1,2,3] <=> [3,2,1]
 => -1
2.0.0p247 :004 > [1,2,3].<=>([3,2,1])
 => -1
2.0.0p247 :005 >
#it's looking at each element one by one
2.0.0p247 :005 > "3" <=> "111111"
 => 1
