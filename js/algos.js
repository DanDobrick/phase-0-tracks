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

/* Pseudo Code
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
  var hash_2_keys = Object.keys(hash_2);

  for (var key in hash_1){
    if (hash_2_keys.includes(key)){
      if (hash_1[key] == hash_2[key]){
        return true;
      }
    }
  }
  return false
}

/* Pseudo
input: integer
steps: create string of possible characters
       create an empty array
       for each integer in the range from 0 to input
        choose a number between 1 and 10
          for each integer from 0 to the number chosen
            create an empty string
            choose a random number between 0 and 51(the length of my alphabet string)
            add that letter to our empty string
      Every time we do this, add it to our array

output: Array

This is NOT a single responsibility method and I'm sure it could be cleaned up.
*/

function string_array(int){
  var alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var random_strings = [];
  for (var i = int; i > 0; i--){
    var string_length = Math.random() * 10;
    string_length = Math.ceil(string_length);
    var new_string = ''
    for (var j = 0; j < string_length; j ++){
      var random_number = Math.random() * 51;
      random_number = Math.ceil(random_number);
      var new_character = alphabet[random_number];
      new_string += new_character;
    }
    random_strings.push(new_string)
  }
  console.log(random_strings)
}

//Function tests
// var long = find_longest(["long phrase","longest phrase","longer phrase"]);

// console.log(long == "longest phrase")

// long = find_longest(["1234567890","123","1234565"]);

// console.log(long == 1234567890)


// var my_hash1 = {name: "Tamir", age: 52};
// var my_hash2 = {name: "Steven", age: 52};

// console.log(key_value_match(my_hash1, my_hash2) == true);

// my_hash1 = {name: "Tamir", hair_color: 'green'};
// my_hash2 = {name: "Steven", favorite_color: 'green'};

// console.log(key_value_match(my_hash1, my_hash2) == false);

string_array(5);

