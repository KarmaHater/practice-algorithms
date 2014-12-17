def fibonacci(index_num)
  first = 1
  second = 1

  while index_num > 0
    thrid = first + second
    first = second
    second = thrid
    index_num -= 1
  end
  first
end

# def fibonacci(index_num)
#   first_num = 1
#   second_num = 1
#   index = 0
#   until index == index_num
#     third = first_num + second_num
#     first_num = second_num
#     second_num = third
#     index+=1
#   end
#   first_num
# end


# def compute(index)
#   first = 0
#   second = 1
#   index.times do
#     third = first + second
#     first = second
#     second = third
#   end
#   first
# end

# p compute(3)
p fibonacci(3)
p fibonacci(5)
p fibonacci(6)

