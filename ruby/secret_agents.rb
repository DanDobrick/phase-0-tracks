=begin
loop through the characters in a string
check if each character is a space character
  If it is, leave it alone
  If it is not, move the letter to the next alphabetical/numerical character
=end

def encrypt(secret)
  index = 0
  while index < secret.length
    if secret[index] == " "
      secret[index] = " "
    elsif
      secret[index] == "z"
      secret[index] = "a"
    elsif
      secret[index] == "9"
      secret[index] = "0"
    else 
      secret[index] = secret[index].next
    end
    index +=1
  end
  return secret
end

=begin
loop through secret string
  for each character, find the index of that character in the string named alphabet
  subtract one from that value
  find the letter in the alphabet that corresponds to our new index
  replace the original letter with our new-found letter.
=end

def decrypt(secret)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < secret.length
    let_to_decrypt = secret[index]
    letter_location = alphabet.index(let_to_decrypt)
    secret[index] = alphabet[letter_location-1]
    index +=1
  end
  return secret
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts decrypt(encrypt("swordfish"))