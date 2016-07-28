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

Method: is_over?
input: none
steps: return true if the number of guesses left is 0 or if the player has guessed the word correctly
      otherwise return false
output: boolean

Method: display
input: none
steps: print the string displaying the game state
output: nil
  
=end

class Game
  attr_reader :num_of_guesses # Used for rspec testing only :word_to_guess, :game_board

  def initialize(word)
    @word_to_guess = word
    @num_of_guesses = word.length
    @game_board_string = "_"*word.length
    @game_board = @game_board_string.split('')
  end

  def update_game_state(index_of_letter)
    @game_board[index_of_letter] = @word_to_guess[index_of_letter]
    @word_to_guess[index_of_letter] = "_"
  end

  #The following two methods (update_guess_count and check_guess) were lumped together at one point, 
  #but I separated them so my methods would have one job
  def update_guess_count(letter_guessed)
    unless @game_board.include?(letter_guessed)
      @num_of_guesses -=1
    end
  end

  def check_guess(letter_guessed)
    while @word_to_guess.include?(letter_guessed)
        letter_index = @word_to_guess.index(letter_guessed)
        update_game_state(letter_index)
      end
  end

  def display
    @game_board_string = ''
    @game_board.each {|character| @game_board_string += character+" "}
    puts @game_board_string
  end

  def is_over?
    if @num_of_guesses == 0
      true
    elsif @word_to_guess == ('_'*@word_to_guess.length)
      true
    else
      false
    end
  end

  def did_win?
    if @word_to_guess == ('_'*@word_to_guess.length)
      true
    else
      false
    end
  end
end

puts "Hello and welcome to a weird version of hangman!"
puts "Player 1, please choose a word for player two to guess. Player 2, please turn your head."

word = gets.chomp
game = Game.new(word)

while !game.is_over?
  puts "Player 2, you have #{game.num_of_guesses} guess left"
  game.display

  puts "Player 2, make a guess"

  player_2 = gets.chomp

  game.update_guess_count(player_2)
  game.check_guess(player_2)
end

if game.did_win?
  puts
  puts "Good job Player 2, you won!"
else
  puts
  puts "Try harder next time Player 2!"
end





