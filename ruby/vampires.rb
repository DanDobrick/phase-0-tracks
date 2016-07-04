
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_choice = gets.chomp

correct_age = Time.now.year-birth_year

result = "Results inconclusive."

if (age == correct_age) && (garlic == "yes" || health_choice == "yes")
  result = "Probably not a vampire"
elsif age != correct_age && (garlic == "no" || health_choice == "no")
  result = "Probably a vampire"
elsif age != correct_age && garlic == "no" && health_choice == "no"
  result = "Almost certainly a vampire" 
end
if ['Drake Cula', 'Tu Fang'].include? name
  result = "Definitely a vampire"
end
puts result
