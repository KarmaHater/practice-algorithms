# def pie(array)
#   return if array.empty?
#     puts "i love #{array.shift} pie"
#     "you have no more pies"
#     pie(array)
# end

# array = ["chreey", "poo","monkey"]
# pie(array)

# def f(num)
#   if num.zero?
#     return nil
#   end
#    puts "*"
#    f(num - 1)
# end

# p f(8)

# Recursion on Lists:

# Write a recursive function to print out each element of a list of numbers on a line by itself. Hint: print the first element, then call recursively.

# def print_list array
#   return if array.empty?
#   puts array.shift
#   print_list array
# end


# x = [1,2,3,4,5]
# p print_list(x)

# Write a recursive function to print out each element of a list on a line by itself, in reverse order (the last element is printed first). Hint: do the recursive call first, then print the first element. Answer

# def reverse_list(x)
#   return if x.empty?
#   puts x.pop
#   reverse_list(x)
# end
# x = [1,2,3,4,5]
# p reverse_list(x)

# Write a recursive function to add up all the elements of a list of numbers.

# def add_up(array, add = 0)
#   if array.empty?
#     return add
#   end
#    add = add + array.pop
#   add_up(array, add)
# end
# x = [1,2,3,3]
# p add_up(x)

# Write a recursive function to return the first odd number in a list.

# def first_odd(array)
#   return "don't have any odd numbers" if array.empty?
#   x = array.shift
#   if x.odd?
#     return x
#   end
#   first_odd(array)
# end

# x = [2,2,4,6,8,8,12,14]
# p first_odd(x)

# Write a recursive function to return a list of all the odd numbers in its input, e.g., f([1,2,3,4,5,6]) should return [1,3,5]

# def all_odds(array, odds = [])
#   return odds if array.empty?
#   x = array.shift
#   if x.odd?
#     odds << x
#   end
#   all_odds(array, odds)
# end
# x = [1,2,3,4,5]
# p all_odds x

# Write a recursive function to return the last element of a non-empty list. Note: you can do this non-recursively by writing list.last or list[-1] or list[list.length-1], but the idea here is to do it recursively. Answer

# def last_element(array)
#   return array[0] if array.count == 1
#   array.shift
#   last_element(array)
# end
# x = [1,2,3,4,5]
# p last_element x

# Write a recursive function to return the next to last element of a list whose length is at least 2

# def return_two(array)
#   return if array.count <= 1
#   p array.shift(2)
#   return_two(array)
# end
# x = [1,2,3,4,5,6]
# return_two x

# Given an arbitrarily deeply nested list containing a number at the bottom, such as [[[[47]]]], write a recursive function to return the number

# def nested x
#   if x.kind_of?(Array)
#     nested x.shift
#   else
#     return x
#   end
# end

# x =  [[[[47]]]]
# p nested x

# Write a recursive function to return the length of a list

# def f(list)
#   if list.empty?
#     return 0
#   else
#     p list.drop(1)
#     return 1 + f(list.drop(1))
#   end
# end
# x = [1,2,3,4,5,5]
# p f(x)


