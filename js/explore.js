/*
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