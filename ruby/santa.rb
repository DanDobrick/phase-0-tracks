class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

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
    reindeer_ranking.delete(reindeer)
    reindeer_ranking.push(reindeer)
  end

  #getter methods for attributes
  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

  def reindeer_ranking
    @reindeer_ranking
  end

  def age
    @age
  end

  #setter methods
  def gender=(new_gender)
    @gender = new_gender
  end

#Testing methods for grading use only
  # def checking
  #   puts @gender
  #   puts @ethnicity
  # end
end

#TESTING
tim_allen = Santa.new('male', 'white')
tim_allen.speak
tim_allen.eat_milk_and_cookies("Mexican Wedding")
tim_allen.gender = 'female'
p tim_allen.gender
tim_allen.celebrate_birthday
p tim_allen.age
p tim_allen.get_mad_at('Vixen')
p tim_allen.ethnicity

#TESTING

# santas = []

# genders = ['N/A', 'male', 'female', 'gender neutral', 'helicopter',]

# ethnicities = ['Prefer Not to Answer', 'Malaysian', 'Indo-fijian', 'Cherokee']

# genders.length.times do |i|
#   santa = Santa.new(genders[i], ethnicities[i])
#   santa.checking
# end