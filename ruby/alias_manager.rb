=begin pseudocode

Create two methods
  one that swaps first and last name(or just use a short line of code for this)
  The other runs the letter movement algorithm.
    if the letter is in the string 'aeiou'
      find the index of the letter in 'aeiou'
      if letter is u return a
      otherwise return the next letter in the index
    if the letter is not in that string
      if the letter is 'z' return 'b'
    otherwise, return next consonant

First, take the string given, make everything lowercase
split the string along the space " "
name the results first_name and the last_name
pass the first name through the letter movement method
pass the last name through the letter movement method
finally capitalize the first letter of both the first and last name
add the two strings together

print this name

Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (
everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' 
would become 'a', and 'd' would become 'f'.

=end