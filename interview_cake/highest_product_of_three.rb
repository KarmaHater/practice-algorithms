# Given an array_of_ints, find the highest_product you can get from three of the integers.

def highest_product(array)
  high_numbers = []
  array.length.times do
    high_numbers << array.max
    array.delete(array.max)
  end
  high_numbers.inject(:*)
end

def highest_product(array)
  array.sort!.pop(3).inject(:*)
end

p highest_product([1,2,3,4])