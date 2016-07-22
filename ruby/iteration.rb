#Release 0

test_array = ['stuff1', 'stuff2', 'stuff3', 'stuff4']

def print_array(array)
  array.each do |x|
    puts "#{x} is in our array"
  end
  puts "this is a status message 1"
  yield
  puts "this is a status message 2"

end

print_array(test_array) {puts 'this is a block'}

#Release 1
puts 'RELEASE 1'
meat =['steak', 'pork', 'chicken', 'horse']

animals = {
  cat: 'mammal',
  dog: 'mammal',
  horse: 'mammal',
  snake: 'reptile',
  platypus: 'mammal'
  }
puts 'array before .each'
p meat

meat.each {|x| x = "not #{x}"}

puts 'array after .each'
p meat
  

puts 'hash before .each'
p animals

animals.each { |key, value| animals[key] = "insect"}

puts 'hash after .each'
p animals
puts 'array before .map' 

p meat
meat.map! {|x| x = "not #{x}"}

puts 'array after .map'
p meat
  

sample_calls_array = [1,2,3,4,5,0]

# p sample_calls_array.delete_if {|variable| variable < 2}


sample_calls_hash = {
  one: 1,
  two: 2,
  three: 3
}

puts "sample"

# p sample_calls_hash.delete_if {|x, y| y < 2}

#p sample_calls_array.select {|x| x > 3}

# p sample_calls_hash.select {|x, y| y < 3}

# p sample_calls_array.keep_if {|x| x > 3}

# p sample_calls_hash.keep_if {|x, y| y < 3}

# p sample_calls_array.drop_while {|x| x < 3}

p sample_calls_hash.reject {|x, y| y == 2}