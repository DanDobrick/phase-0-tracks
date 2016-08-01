// ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase".

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

long = find_longest(["long phrase","longest phrase","longer phrase"]);

console.log(long)