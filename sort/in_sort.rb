# Suppose we had an array ↴ of n integers in sorted order. How quickly could we check if a given integer is in the array?


def num_check(array, num)
  if array.first < num && num < array.last
    return true
  else
    false
  end
end
n = [1,2,3,4,5,6]

p num_check(n, 4)
