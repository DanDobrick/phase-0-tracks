# todo: change print method to print_game_short that shows name and id
# make verbose print method which shows all the information (maybe add more to the DB?)
# Choose a random game
# Choose a random game with player count

#require gems
require 'sqlite3'

#open database
db = SQLite3::Database.new("boardgames.db")
db.results_as_hash = true

def print_game(hash_to_print)

  hash_to_print.each do |game|
    game.each do |key, val|
      # This if statement gets rid of extraneous information given to us by SQL
      if !key.is_a? Integer
        if key == 'id'
          category = 'id: '
          value = val.to_s
        elsif key == 'name'
          category = 'Name: '
          value = val
        elsif key == 'player_min'
          category = 'Minimum players: '
          value = val.to_s
        elsif key == 'player_max'
          category = 'Max players: '
          value = val.to_s
        else
          category = ''
          value = ''
        end
        puts category + value
      end
    end
  end
end

def match_player_count(db, player_number)
  games = db.execute("SELECT games.name, games.id, games.player_min, games.player_max, owners.owner_name
    FROM games
    JOIN owners ON games.owner_id = owners.id
    WHERE games.player_min <= ? AND games.player_max >= ?", [player_number, player_number])
end

def owner_name_to_id(owner_name)
  game_owners = { 'Dan' => 1,
    'Dave' => 2,
    'Shaw' => 3,
    'Dan | Dave' => 4,
    'Dan | Dave | Shaw' => 5,
    'Dan | Shaw' => 6,
    'Dave | Shaw' => 7
  }

  owner_id = game_owners[owner_name]
end

def enter_new_game(db, game_name, player_min, player_max, owner_name)
    db.execute("INSERT INTO games (name, player_min, player_max, owner_id)
      VALUES (?, ?, ?, ?)", [game_name, player_min, player_max, owner_id]
      )
end

# num_of_games = db.execute("SELECT COUNT(id) FROM games")
# #converting SQL result from a hash inside an array to integer
# num_of_games = num_of_games[0][0]
# random_number = rand(num_of_games) + 1

# # Select game based on id and prints certain information
# random_game = db.execute( "SELECT games.name, games.player_min, games.player_max, owners.owner_name FROM games JOIN owners ON games.owner_id = owners.id WHERE games.id = ?", [random_number])
# print_game(random_game)

# print_game(match_player_count(5, db))

# puts "WELCOME TO GAME TRACKER 5000!"
# puts "Select a number from the options below"
# puts '      1. Add a game to the collection
#       2. Display games that support 
#       3. Choose a random game based on the number of players
#       4. Something special'
# selection = gets.chomp
# until selection.to_i>0 && selection.to_i<5
#   puts "I'm sorry \"#{selection}\" is not a valid choice, please select from the following options:
#       1. Add a game to the collection
#       2. Choose a random game
#       3. Choose a random game based on the number of players
#       4. Something special"
#   selection = gets.chomp
# end
# puts "How many people are playing today?"
# players = gets.chomp
# players = players.to_i
# matched_games = match_player_count(db, 8)
# num_of_games = matched_games.length
# puts "You have #{num_of_games} games to choose from. Press any key to continue."
# gets
# print_game(matched_games)

