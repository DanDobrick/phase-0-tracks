#require gems
require 'sqlite3'

#open database
db = SQLite3::Database.new("boardgames.db")
db.results_as_hash = true

# Choose a random game and print out who owns that game
num_of_games = db.execute("SELECT COUNT(id) FROM games")
#converting sql result to integer
num_of_games = num_of_games[0]["COUNT(id)"]
num_of_games

#Print out of all values of each game
# get_all_games = db.execute(<<-SQL
#   SELECT * FROM games;
#   SQL
#   )
# get_all_games.each do |game|
#   game.each do |key, val|
#     if !key.is_a? Integer
#       puts "#{key} is #{val}"
#     end
#   end
#   puts
# end