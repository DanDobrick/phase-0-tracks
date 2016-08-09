#require gems
require 'sqlite3'

#open database
db = SQLite3::Database.new("boardgames.db")
db.results_as_hash = true

def remove_extra_info(orig_array)
  #removes extra information from each game hash passed in as an array of hashes, returns a cleaned array
  games_array = []
  orig_array.each do |game|
    orig_array ={}
    game.each do |key, val|
      if !key.is_a? Integer
        orig_array[key] = val
      end
    end
    games_array.push(orig_array)
  end
  games_array
end

def print_game_short(array_to_print)
  #prints game name and id when passed an array of hashes
  array_to_print.each do |game|
    game_name = game['name']
    game_id = game['id']
    puts "ID: " + game_id.to_s
    puts "Name: " + game_name
    puts 
  end
end

def print_game_long(game_hash)
  #takes a single game hash and prints information in human readable format
  name = game_hash['name']
  player_min = game_hash['player_min']
  player_max = game_hash['player_max']
  owners = game_hash['owner_name']

  puts "        Name: #{name}
        Minimum players: #{player_min}
        Maximum players: #{player_max}
        Owner(s): #{owners}"
end

def get_more_info(db, game_id)
  #returns verbose information as an array from the database when passed a db and game id
  game_info = db.execute("SELECT games.name, games.id, games.player_min, games.player_max, owners.owner_name
    FROM games
    JOIN owners ON games.owner_id = owners.id
    WHERE games.id = ?", [game_id])
  verbose_game_info = remove_extra_info(game_info)[0]
end

def match_player_count(db, player_number)
  #returns an array of hashes (already cleaned) that match the player number specified
  games = db.execute("SELECT games.name, games.id, games.player_min, games.player_max, owners.owner_name
    FROM games
    JOIN owners ON games.owner_id = owners.id
    WHERE games.player_min <= ? AND games.player_max >= ?", [player_number, player_number])
  games = remove_extra_info(games)
end

def owner_name_to_id(owner_name)
  #Takes owner_name as a string and returns owner id for database use
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
  #enters a new game into the database
  owner_id = owner_name_to_id(owner_name)
  db.execute("INSERT INTO games (name, player_min, player_max, owner_id)
    VALUES (?, ?, ?, ?)", [game_name, player_min, player_max, owner_id]
    )
end

def choose_random_game(db)
  #takes database and returns random id
  #getting number of games in the table 'games'
  num_of_games = db.execute("SELECT COUNT(id) FROM games")
  #converting SQL result from a hash inside an array to integer
  num_of_games = num_of_games[0][0]
  random_number = rand(num_of_games) + 1
end

def random_game_playercount(db, player_count)
  #returns a random game (extra info already removed) based on player_count
  possible_games = match_player_count(db, player_count)
  random_number = rand(possible_games.length) + 1
  random_game = possible_games[random_number]
end

p   get_more_info(db, 5)

#USER INTERFACE
continue = true
puts "Welcome to Game Organizer 5,000!"
while continue
  puts "Select a number from the options below"
  puts '      1. Add a game to the collection.
      2. Choose a random game.
      3. Choose a random game based on the number of players.
      4. Display games that support a particular player count.
      5. Find information on a certain game(NOT YET IMPLEMENTED).
      6. Quit program'
  selection = gets.chomp
  until selection.to_i>0 && selection.to_i<7
    puts "I'm sorry \"#{selection}\" is not a valid choice, please select from the following options:
      1. Add a game to the collection.
      2. Choose a random game.
      3. Choose a random game based on the number of players.
      4. Display games that support a particular player count.
      5. Find information on a certain game(NOT YET IMPLEMENTED).
      6. Quit program"
    selection = gets.chomp
  end

  case selection
  when "1"
    puts "ADD GAME TO COLLECTION"
    puts "What is the name of the game?"
    name = gets.chomp
    puts "What is the MINIMUM player count?"
    player_min = gets.chomp
    puts "What is the MAXIMUM player count?"
    player_max = gets.chomp
    puts "Who owns the game? (If multiple people own the game, separate their names with a pipe like so: 'Dan | Dave'"
    owner_name = gets.chomp
    puts "Is the following information correct(y/n)?
          Game Name: #{name}
          Minimum players: #{player_min}
          Maximum players: #{player_max}
          Owner(s): #{owner_name}"
    correct = gets.chomp
    if correct = 'y'
      enter_new_game(db, name, player_min.to_i, player_max.to_i, owner_name)
      puts "Successfully added game to database"
    else
      puts 'Something went wrong!'
    end
    puts "Press enter to return to main menu"
    gets
  when "2"
    puts "CHOOSE A RANDOM GAME"
    game_id = choose_random_game(db)
    game_info = get_more_info(db, game_id)
    print_game_long(game_info)
    puts "Press enter to return to main menu"
    gets
  when "3"
    puts "3. Choose a random game based on the number of players."
  when "4"
    puts "4. Display games that support a particular player count."
  when "5"
    puts "5. Find information on a certain game(NOT YET IMPLEMENTED)."
  when "6"
    puts "Thank you for using Game Organizer 5000."
    continue = false
  else
    puts "You should never be able to get to this point."
  end
end







