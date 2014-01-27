// # prereqs: arrays, methods, conditional logic
// # Write a method that returns the first even element in a array of integers
// # This is an old todo we did in Ruby, please rewrite your answer in javascript
 
// def first_even(items)
//   // code goes here
// end


function firstEven(items) {
  var evens = [];
  for (var i=0; i<items.length; i++) {
    if (items[i] % 2 === 0) {
      evens.push(items[i]);
    }
  }
  return evens;
}

firstEven([1,3,5,7,10]);



