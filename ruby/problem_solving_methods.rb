#Release 0
arr = [1, 2, 3, 4, 5]
def search_array(array, integer)
  if !array.include?(integer)
    return nil
  end
  index = 0
  array.each do |item|
    if integer == item
      return index
    end
  index += 1
  end
end


p search_array(arr, 3)

# => 2

p search_array([3, 5, 2, 7, 8, 9, 2], 2)


#Release 1
def fib_array(number)
  fib_array = [0, 1]
  num_of_loops = number - 2
  
  if number == 0
    return "We're starting from one, try again!"
  elsif number == 1
    return [0]
  elsif number == 2
    return [0, 1]
  end
  
  while num_of_loops > 0
    next_fib = fib_array[-1] + fib_array[-2]
    fib_array = fib_array << next_fib
    num_of_loops -= 1
  end
  return fib_array
end


#p fib_array(859595)

#test
p fib_array(100) == 218922995834555169026

#Release 2