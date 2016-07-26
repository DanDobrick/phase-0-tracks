# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # break up into seperate items
  # put the items in a hash as keys
  # set default quantity as 1, unless user specifies
  # print the list to the console [can you use one of your other methods here?]
# output: the hash

def list_creator(list)
  list_hash = {}
  list.split(" ").each do |item|
    list_hash[item] = 1
  end
  list_hash
end

list_hash = list_creator("apple banana cereal")


  

# Method to add an item to a list
# input: item name and optional quantity
# steps: loop until user types done
#        Check to see if item is in the hash
#        If not, enter the item with quantity as as key, value
#        If it is, update quantity (override)
# output: updated hash

def item_adder(hash, item, quantity = 1)
  #hash[item] = hash[item].to_i + quantity
  x = hash[item].to_i + quantity
  hash.merge!(item => x)
end

p item_adder(list_hash, "grapes", 3)

# Method to remove an item from the list
# input: hash, item, quantity
# steps: if quantity is zero, take the key/value pair out of the hash altogether
#      otherwise, subtract inputted quantity from existing quantity
# output: updated hash

def item_remover(hash, item, quantity = 1)
  hash[item] -= quantity
  if hash[item] <= 0
    hash.delete(item) 
  end
  hash
end

p item_remover(list_hash, 'grapes')

# Method to print a list and make it look pretty
# input: hash
# steps: Print a statement that interpolates hash key and value for each key/value pair
# output: printed statements

def hash_printer(hash)
  puts "Grocery List"
  hash.each do |key, value|
    puts "You need #{value} #{key}(s)."
  end
end

hash_printer(list_hash)

# What did you learn about pseudocode from working on this challenge?
# I learned that I can be more succient than I currently am, and that it should be language agnostic.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Hashes can store all the information that you need instead of cross refrencing indicies of two arrays

# What does a method return?
# The return value of the last line of the method.

# What kind of things can you pass into methods as arguments?
# objects or nothing at all (As long as there is a defualt value)

# How can you pass information between methods?
# Either using a global variable (not as good) or passing the information as a parameter

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I feel like I got a lot more comfortable with pseudocode
