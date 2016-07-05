puts "How many employees are going to be tested?"
num_employees = gets.chomp.to_i

while num_employees >0
  # Survey Questions
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
  end
  if age != correct_age && garlic == "no" && health_choice == "no"
    result = "Almost certainly a vampire" 
  end
  if ['Drake Cula', 'Tu Fang'].include? name
    result = "Definitely a vampire"
  end

  #Allergy Checker
  allergy = " "
  until allergy == "done"
    puts "What allergies do you have? Type \'done\' If you don't have any more."
    allergy = gets.chomp.downcase
    if allergy == "sunshine"
      result = "Probably a vampire"
      allergy = "done"
    end
  end

  puts result
  num_employees -=1
  if num_employees >=1
    puts "\nHave the next employee sit at the computer and press \'enter\'"
    gets
  end
end
