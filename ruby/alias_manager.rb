=begin pseudocode

Create two methods
  one that swaps first and last name(or just use a short line of code for this)
  The other runs the letter movement algorithm.
    if the letter is in the string 'aeiou'
      find the index of the letter in 'aeiou'
      if letter is u return a
      otherwise return the next letter in the index
    if the letter is not in that string
      if the letter is 'z' return 'b'
    otherwise, return next consonant

First, take the string given, make everything lowercase
split the string along the space " "
name the results first_name and the last_name
pass the first name through the letter movement method
pass the last name through the letter movement method
finally capitalize the first letter of both the first and last name
add the two strings together, last name first

print this name

=end

def letter_mover(letter)
  # Takes a letter, if it's a vowel, return the next vowel in alphabetical order
  # if it's a consonant, return the next consonant in alphabetical order
  letter.downcase!
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxyz'
  if consonants.include?(letter)
    index = consonants.index(letter)
    new_leter = consonants[index+1]
  else
    index = vowels.index(letter)
    new_letter = vowels[index + 1]
  end
end

def spy_name(name)
  #Take a name, swap first and last name and move each constant/vowel one consonant/vowel forward alphabetically
  if !name.include?(' ')
    #if only one name given--such as Prince--ask for a fake last name.
    puts "Enter a fake last name to continue."
    name += " "+gets.chomp
  end
  first_name, last_name = name.split(' ')
  first_letters = first_name.split('')
  last_letters = last_name.split('')
  first_letters.map! {|let| letter_mover(let)}
  last_letters.map! {|let| letter_mover(let)}

  spy_first_name = last_letters.join('')
  spy_last_name  = first_letters.join('')

  new_name = spy_first_name.capitalize + ' ' + spy_last_name.capitalize
end


cover_list = {}
loop do
  #Keep asking user for names, then store them in a hash and print the master list at the end.
  puts 'Who\'s identity do you wish to conceal? Type \'quit\' when finished.'
  name = gets.chomp
  if name == 'quit'
    break
  else
    spy_alias = spy_name(name)
    cover_list[name] = spy_alias
  end
end

cover_list.keys.each {|orig_name| puts "#{orig_name}\'s alias is #{cover_list[orig_name]}"}


