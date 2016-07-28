require_relative 'game'

#To run tests, ensure that :word_to_guess and :game_board are readable in the game file

describe Game do 
  let (:game) {Game.new('apple')}
  
  it 'Stores the word, determines number of guesses and stores a game board' do
    expect(game).to have_attributes word_to_guess: "apple", num_of_guesses: 5, game_board:["_", "_", "_", "_", "_"]
  end

  it "Updates the game board and keeps track of letters that have been guessed" do
    game.update_game_state(0)
    expect(game.game_board).to eq ["a", "_", "_", "_", "_"]
    expect(game.word_to_guess).to eq '_pple'
  end

  it "Checks if the letter has been guessed before and updates the number of guesses" do
    game.update_guess_count('a')
    game.update_game_state(0)
    game.update_guess_count('a')
    game.update_game_state(0)
    expect(game.num_of_guesses).to eq 4
  end
  
  it "Updates the game board and word_string if a guess is correct" do
    game.check_guess('a')
    expect(game.game_board).to eq ["a", "_", "_", "_", "_"]
  end

  it "Displays the game board to the player" do
    expect(STDOUT).to receive(:puts).with('_ _ _ _ _ ')
    game.display
  end

  it "Tells you if the game is over" do
    expect(game.is_over?).to eq false
    game2 = Game.new('')
    expect(game2.is_over?).to eq true
  end

end