puts "What is the hamster's name?"
name = gets.chomp
​
puts "What is this hamster's volume level (from 1-10)?"
volumeLevel = gets.chomp.to_i
​
puts "What color is the hamster?"
furcolor = gets.chomp
​
puts "This hamster a good roommate (y/n)"
roommatestatus = gets.chomp
if roommatestatus == "y"
  roommatestatus = true
else roommatestatus = false
end
​
puts "How old is this hamster?"
age = gets.chomp.to_f
if age == 0.0
  age = nil
end
​
​
puts "The hamster's name is #{name}"
puts "#{name} is a #{volumeLevel} on the volume scale."
puts "#{name} is #{furcolor}."
puts "#{name} is a good roommate: #{roommatestatus}."
​
if age == nil
  puts "We don't know how old #{name} is."
else
  puts "#{name} is #{age} years old."
end