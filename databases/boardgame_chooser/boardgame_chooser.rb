#require gems
require 'sqlite3'

#open database
db = SQLite3::Database.new("boardgames.db")
db.results_as_hash = true

#Prints game information
def print_game(hash_to_print)
  hash_to_print.each do |game|
    game.each do |key, val|
      if !key.is_a? Integer
        puts "#{key} is #{val}"
      end
    end
    puts
  end
end

# Choose a random game and print out who owns that game
num_of_games = db.execute("SELECT COUNT(id) FROM games")
#converting SQL result from a hash inside an array to integer
num_of_games = num_of_games[0][0]

random_number = rand(num_of_games) + 1

# Selects game based on id and prints certain information
random_game = db.execute( "SELECT games.name, games.player_min, games.player_max, owners.owner_name FROM games JOIN owners ON games.owner_id = owners.id WHERE games.id = ?", [random_number])

print_game(random_game)