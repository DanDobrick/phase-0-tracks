
# One user can enter a word (or phrase, if you would like your game to support that), and 
# another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", 
# the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters 
# a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

=begin

Method: Initialize
input: word to be guessed
steps:  store the word to be guessed
        determine the number of guesses allowed and store that
        create variable for game state string
output: game object

Method: Check guess
input: letter guessed
steps:  Check if the letter has been guessed before, if so return false
        check if the letter is in the string
        if it is in the string
          call update game state
          update guess number
        if it's not in the string
          Update guess number
output: nil

Method: Update game state
input: none
steps:  remove all instances of the letter that was guessed from the string and replace with _
        update the game state string
output: nil

Method: display
input: none
steps: print the string displaying the game state
output: nil
  
=end