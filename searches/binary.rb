def binary(array, num, lower = 0, upper = array.count - 1 )
  return -1 if lower > upper
  mid = (lower + upper) / 2

  if num == array[mid]
    return mid
  elsif num < array[mid]
    upper = mid - 1
    binary(array, num, lower, upper)
  elsif num > array[mid]
    lower = mid + 1
    binary(array, num, lower, upper)
  else
    return -1
  end
end

# array = [1,2,3,4,5,6,7,8,9,10,11,12,12,13,14]
# num = 1
# p binary(array, num)

def assert( given, expected)
  given == expected
end

array = [1,2,3,4,5,6,7]
# p binary(array, 6)
#num == midpoint
p assert(binary(array, 6), 5)

# num < midpoint
p assert( binary(array, 1 ), 0 )
#num > midpoint
p assert( binary(array, 3 ), 2 )

# p binary(array, 3)
# num not there
p binary(array, 30)
