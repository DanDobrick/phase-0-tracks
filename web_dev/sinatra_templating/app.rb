# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/search_students' do
  erb :search_student
end


# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


post '/find_students' do
  age = params['age'].to_i
  redirect "/search_results/#{age}"
end

get '/search_results/:age' do 
  age = params[:age].to_i
  @students = db.execute("SELECT * FROM students WHERE age=?", [age])
  erb :search_results
end

# add static resources

