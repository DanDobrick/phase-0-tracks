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


