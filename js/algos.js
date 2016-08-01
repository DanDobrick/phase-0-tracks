/* Pseudo code

input: Array of strings
steps: begin with an empty string called longest
        for each string in the array
          determines the length of each string,
          checks if the length of the current string is longer than the current longest string
          if it is, mark the current string the longest and keep moving
          otherwise, keep moving
        When we get to the end of the array return the string currently marked longest
output: longest string

*/

function find_longest(array){
  var longest = '';
  for (i = 0; i < array.length; i++){
     current_string = array[i];
     if (current_string.length > longest.length){
       longest = current_string;
     }
    }
  return longest;
}

/*
In algos.js, write a function that takes two objects and checks to see if the objects share at 
least one key-value pair. (If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54},
the function  would return true, because at least one key-value pair matches between the two objects. If no pairs match
(and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make 
your life 
easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered 
equivalent. Again, try to reason through the problem using the basics you've already learned, rather than looking up slick
search functions that will do the job for you. We'd rather see you write code that you actually understand!

Pseudo Code

input: two key, value pairs
steps: get all the keys from each hash
      for each key, check if they match any of the keys from the other object
      if they do
        check if their values match
        if they do
          return true
        if they don't
          move on
      if they don't move on

      If, after all that, the function has not returned true, return false
return: boolean

*/

//Function tests
long = find_longest(["long phrase","longest phrase","longer phrase"]);

console.log(long)

long = find_longest(["1234567890","123","1234565"]);

console.log(long)

long = find_longest(["12345","12345","8675309", "8675308"]);

console.log(long)