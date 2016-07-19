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

p search_array([3, 5, 2, 7, 8, 9, 2], 3)

#=>0


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
p fib_array(100)[-1] == 218922995834555169026

#Release 2
=begin
Bubble sort.

-input an array of numbers
-starting with the first number, compare with the next number in the index, and exchange indicies if the second number is smaller than the first.
-continue with the next index if the number has exchanged and follow the same process
-if the second number is bigger than the first, do not exchange and move to the next number in the index.
=end

test_arr = [2,3,1]

#   until we don't swap anymore
#   if number is bigger than next swap, then move to the next pair
#   if number is not bigger then skip and move to the next pair
#   if you the reach the end, start from beginning, and do it again

def bubble_sort(array)
  swapped = true
  until swapped == false
    swapped = false
    (array.length-1).times do |index|
      if array[index] > array[index+1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      # else 
      #   swapped = false
      # WHY DOESN'T THIS WORK WHEN I COMMENT OUT LINE 73?
      end
    end
  end
  array
end

p bubble_sort(test_arr)

p bubble_sort([10,9,8,7,6,1,2,3,4,5])