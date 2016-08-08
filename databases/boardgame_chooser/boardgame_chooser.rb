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

def match_player_count(player_number, db)
  games = db.execute("SELECT games.name, games.player_min, games.player_max, owners.owner_name
    FROM games
    JOIN owners ON games.owner_id = owners.id
    WHERE games.player_min <= ? AND games.player_max >= ?" ,[player_number, player_number])
end


# num_of_games = db.execute("SELECT COUNT(id) FROM games")
# #converting SQL result from a hash inside an array to integer
# num_of_games = num_of_games[0][0]
# random_number = rand(num_of_games) + 1

# # Select game based on id and prints certain information
# random_game = db.execute( "SELECT games.name, games.player_min, games.player_max, owners.owner_name FROM games JOIN owners ON games.owner_id = owners.id WHERE games.id = ?", [random_number])
# print_game(random_game)

# print_game(match_player_count(5, db))

puts "WELCOME TO GAME TRACKER 5000!"
# puts "Select From the options below"
puts "How many people are playing today?"
players = gets.chomp
matched_games = match_player_count(players, db)
num_of_games = matched_games.length
puts "You have #{num_of_games} games to choose from. Press any key to continue."
gets
print_game(matched_games)
