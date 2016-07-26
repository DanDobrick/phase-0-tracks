# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words.upcase + '!!!!! YAY!!!!!'
#   end
# end

# puts Shout.yell_happily('I love coding')

# puts Shout.yell_angrily('I don\'t want to go home')

module Shout
  def yell_angrily(words)
    words + "!!!" + ":("
  end

  def yell_happily(words)
    words.upcase + '!!!!!!!!! YAY!!!!!!!'
  end
end

class Tears_for_fears
  include Shout
end

class The_isley_brothers
  include Shout
end

roland_orzabal = Tears_for_fears.new

puts roland_orzabal.yell_happily('Shout, Shout, Let it all out. These are the things I can do without')

ronald_isley = The_isley_brothers.new

puts ronald_isley.yell_happily('You know you make me wanna shout')