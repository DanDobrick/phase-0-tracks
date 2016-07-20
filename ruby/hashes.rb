=begin
Pseudocode

Prompt the designer/user for all of this information, store their answers as key value pairs in a hash
create a method that converts any user input to the appropriate data type using to_i and boolean checks, etc.
print each key value pair of the hash on individual lines.

until the user says "none"
  ask if they have any values they want to update.
  check if the user said 'none', if they did, then break.
  turn the strings given into symbols
  using these symbols give the user the current value, then ask the user for a new value.
  change the current value into the given value.

print the whole hash all at once using puts
=end

def change_type(old_value, new_value)
  #Changes data type of new_value to match that of old_value (Works for str, int, float and bool)
  if old_value.is_a? String
    changed_value = new_value.to_s
  elsif old_value.is_a? Integer
    changed_value = new_value.to_i
  elsif old_value.is_a? Float
    changed_value = new_value.to_f
  elsif old_value == true || old_value == false #I found !!old_value on stack overflow and I kinda get it, but not enough to add it to my program
    if new_value == "true"
      changed_value = true
    else changed_value = false
    end
  end
end

client_data = {
  first_name: "",
  last_name: "",
  phone_number: 8675309,
  number_of_children: 0,
  decor_theme: "",
  budget: 0.0,
  prepaid_boolean: false
}

client_data.keys.each do |key|
  #For each key in the hash above, ask user for initial input, change to correct class, 
  #then replace the starting value with the user input.
  key_string = key.to_s
  key_string.tr!("_", " ")
  puts "Please enter the client\'s #{key_string}:"
  input_value = gets.chomp
  new_value = change_type(client_data[key], input_value)
  client_data[key] = new_value
end

#print each key vale pair for review.
puts "\n"
client_data.keys.each do |key|
  puts "The client's #{key} is #{client_data[key]}."
end

#until the user has "none" to edit
loop do
  puts "Type the name of a field you want to edit, if everything looks good, type 'none'."
  field_to_edit = gets.chomp
  if field_to_edit == 'none'
    break
  end
  #Take the user input, make it a symbol, then put the input through our change_type method before changing the has value
  key_to_edit = field_to_edit.to_sym
  puts "Enter the new value for the client's #{field_to_edit.tr("_", " ")}."
  new_input = gets.chomp
  new_client_info = change_type(client_data[key_to_edit], new_input)
  client_data[key_to_edit] = new_client_info
end

puts client_data