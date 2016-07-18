# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
p "iNvEsTiGaTiOn".swapcase!
p "iNvEsTiGaTiOn".replace("InVeStIgAtIoN")
      #This one can work for all the rest of the "suspects", so I am not going to mention it again.
# => “InVeStIgAtIoN”


p "zom".insert(1, "o")
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".insert(-1, " suspects")
p "the usual".concat(" suspects")
p "the usual" << " suspects"
#=> "the usual suspects"

p " suspects".prepend("the usual")
p " suspects".insert(0, "the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

p "z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
  #It's the ASCII code for "z"

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4