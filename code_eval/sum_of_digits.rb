# def sum num
#   numbers = num.to_s.split("").map(&:to_i)

#   total = 0
#   i = 0
#   while i < numbers.count
#     total = total + numbers[i]
#     i = i + 1
#   end
#   total
# end

def sum num
  numbers = num.to_s.split("").map(&:to_i)
  numbers.inject(:+)
end
p sum 23
p sum 496