# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  campus = params[:campus]
  if campus
    students = db.execute("SELECT * FROM students WHERE campus = ?", [campus])
  else
    students = db.execute("SELECT * FROM students")
  end
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  '<h2>123 Sesame Street</h2>'
end

get '/great_job' do 
  name = params[:name]
  if name
    "Good Job #{name}!"
  else
    "Good Job!"
  end
end

get '/:num1/plus/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  added_nums = num2 + num1
  added_nums.to_s
end

## My Optional bonus work is in the students page