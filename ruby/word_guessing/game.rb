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
input: letter 
steps:  remove all instances of the letter that was guessed from the string and replace with _
        update the game state string
output: nil

Method: display
input: none
steps: print the string displaying the game state
output: nil
  
=end

class Game
  attr_reader :num_of_guesses, :did_win # Used for rspec testing only :word_to_guess, :game_board

  # When initializing, create all the variables needed for later
  def initialize(word)
    @word_to_guess = word
    @num_of_guesses = word.length
    @game_board_string = "_"*word.length
    @game_board = @game_board_string.split('')
  end

  # Update the state of the game board and the letters left to guess
  def update_game_state(index_of_letter)
    @game_board[index_of_letter] = @word_to_guess[index_of_letter]
    @word_to_guess[index_of_letter] = "_"
  end

  # The following two methods (update_guess_count and check_guess) were lumped together at one point, 
  # but I separated them so my methods would have one job

  # Updates the number of guesses left
  def update_guess_count(letter_guessed)
    unless @game_board.include?(letter_guessed)
      @num_of_guesses -=1
    end
  end

  # Checks the guess to see if it's correct and updates the game appropriately
  def check_guess(letter_guessed)
    while @word_to_guess.include?(letter_guessed)
      letter_index = @word_to_guess.index(letter_guessed)
      update_game_state(letter_index)
    end
  end

  # Displays the game board to the user
  def display
    @game_board_string = ''
    @game_board.each {|character| @game_board_string += character+" "}
    @game_board_string
  end

  # Checks if the game is over by winning or by number of turns
  def is_over?
    if @num_of_guesses == 0
      did_win = false
      true
    elsif @word_to_guess == ('_'*@word_to_guess.length)
      @did_win = true
      true
    else
      false
    end
  end
end

puts "Hello and welcome to a weird version of hangman!"
puts "Player 1, please choose a word for player two to guess (please do not use '_'). Player 2, please turn your head."

word = gets.chomp
game = Game.new(word)

while !game.is_over?
  puts "Player 2, you have #{game.num_of_guesses} guess left"
  puts game.display

  puts "Player 2, make a guess"

  player_2 = gets.chomp

  game.update_guess_count(player_2)
  game.check_guess(player_2)
end

if game.did_win
  puts
  puts "Good job Player 2, you won!"
else
  puts
  puts "You lost! Try harder next time Player 2!"
end