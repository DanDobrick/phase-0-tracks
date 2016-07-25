class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  #more methods
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age +=1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

#Methods for grading use only
  # def checking
  #   puts @gender
  #   puts @ethnicity
  # end
  # I deleted all these getter/setter methods:
  # def gender
  #   @gender
  # end
  # def gender=(new_gender)
  # @gender = new_gender
  # end
  # But I will keep one here because the rubric requires them
end

#BUSINESS LOGIC
def create_santa
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "Porpoise"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

  gender = example_genders.sample
  ethnicity = example_ethnicities.sample
  santa = Santa.new(gender, ethnicity)
  santa.age = rand(140)
  santa
end

#USER INTERFACE
puts "How many Santas do you want to create?"
num_of_santas = gets.chomp.to_i

num_of_santas.times do
  mr_claus = create_santa
  puts "Age: #{mr_claus.age}"
  puts "Gender: #{mr_claus.gender}"
  puts "Ethnicity: #{mr_claus.ethnicity}"
end

#TESTING CODE FOR GRADING PURPOSES

# tim_allen = Santa.new('male', 'white')
# tim_allen.speak
# tim_allen.eat_milk_and_cookies("Mexican Wedding")
# tim_allen.gender = 'female'
# p tim_allen.gender
# tim_allen.celebrate_birthday
# p tim_allen.age
# p tim_allen.get_mad_at('Vixen')
# p tim_allen.ethnicity

# santas = []

# genders = ['N/A', 'male', 'female', 'gender neutral', 'helicopter',]

# ethnicities = ['Prefer Not to Answer', 'Malaysian', 'Indo-fijian', 'Cherokee']

# genders.length.times do |i|
#   santa = Santa.new(genders[i], ethnicities[i])
#   santa.checking
# end