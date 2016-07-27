# class Puppy
  
#   def initialize
#     puts "Initializing new puppy instance ..."
#   end
  

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(times_to_bark)
#     times_to_bark.times do puts "Woof!"
#     end
#   end
  
#   def roll_over
#     puts "*rolls over*"
#   end
  
#   def dog_years(human_years)
#     human_years * 7
#   end
  
#   def sit
#     puts "*sits*"
#   end
  
  
# end

# puppy = Puppy.new

# puppy.fetch("squeeky")

# puppy.speak(3)

# puppy.roll_over

# p puppy.dog_years(3)

# puppy.sit


class Kitten
  
  def initialize
    puts "Initializing new kitten instance ..."
  end
  
  def nap
    puts "*naps*"
  end
  
  def meow(times_to_meow)
    puts "Meow!!" * times_to_meow
  end
  
  
end

kitten = Kitten.new
kitten.nap

kitten.meow(4)

kitten_storage = []


50.times do 
  kitten = Kitten.new
  kitten_storage << kitten
end

#p kitten_storage

kitten_storage.each do |cat|
  kitten.nap
  kitten.meow(4)
end