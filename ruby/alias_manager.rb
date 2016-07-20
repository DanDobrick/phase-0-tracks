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
  name.downcase!
  if !name.include?(' ')
    return "ERROR - please enter first and last name separated by a space"
  end
  first_name, last_name = name.split(' ')
  spy_first_name = ''
  spy_last_name = ''
  first_letters = first_name.split('')
  last_letters = last_name.split('')

  first_letters.each {|let| spy_last_name +=letter_mover(let)}
  last_letters.each {|let| spy_first_name +=letter_mover(let)}

  new_name = spy_first_name.capitalize + ' ' + spy_last_name.capitalize
end

#p spy_name("Felicia Torres")


loop do
  puts 'Who\'s identity do you wish to conceal?'
  name = gets.chomp
  if name == 'quit'
    break
  end
  puts "Your new alias is #{spy_name(name)}"
end

