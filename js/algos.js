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
  for (var i = 0; i < array.length; i++){
     var current_string = array[i];
     if (current_string.length > longest.length){
       var longest = current_string;
     }
    }
  return longest;
}

/*
Pseudo Code

input: two key, value pairs
steps: get all the keys from each hash
      for each key, check if they match any of the keys(using a method or a loop) from the other object
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

function key_value_match(hash_1, hash_2){
  var hash_1_keys = Object.keys(hash_1);
  var hash_2_keys = Object.keys(hash_2);
  for (var i = 0; i < hash_1_keys.length; i++){
    var key_of_interest = hash_1_keys[i];
    if(hash_2_keys.includes(key_of_interest)){
      if(hash_1[key_of_interest] == hash_2[key_of_interest]){
        return true;
      }
    }
  }
  return false;
}

//Function tests
var long = find_longest(["long phrase","longest phrase","longer phrase"]);

console.log(long)

long = find_longest(["1234567890","123","1234565"]);

console.log(long)

long = find_longest(["12345","12345","8675309", "8675308"]);

console.log(long)

var my_hash1 = {name: "Tamir", age: 52};
var my_hash2 = {name: "Steven", age: 52};

console.log(key_value_match(my_hash1, my_hash2));

my_hash1 = {name: "Tamir", hair_color: 'green'};
my_hash2 = {name: "Steven", favorite_color: 'green'};

console.log(key_value_match(my_hash1, my_hash2));