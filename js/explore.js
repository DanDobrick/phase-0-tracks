/*
This isn't a task specific to JavaScript -- your pseudocode should be in plain English and use phrases like "for each" instead of JavaScript-specific terms. Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'. Take your time. This is the most valuable skill in programming: being able to think through a problem logically.
Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like. Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal, similar to how you run Ruby programs.
Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.
Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.

as many times as there are characters in the string, take the last letter and put it into a new string.
Then move to the second to last letter etc.
return the new string
*/

function reverse(str){
  var new_str = '';
  for (i = str.length-1; i >= 0 ; i--){
    new_str += str[i];
  }
  return new_str;
}

reversed_string = reverse('hello');

if (1 == 1){
  console.log(reversed_string);
}