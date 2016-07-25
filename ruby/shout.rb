module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + '!!!!! YAY!!!!!'
  end
end

puts Shout.yell_happily('I love coding')

puts Shout.yell_angrily('I don\'t want to go home')