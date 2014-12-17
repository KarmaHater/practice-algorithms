require "pry"
def happy_nums(num)
  if num == 1
    return "this is a happy number"
  end
  total = 0

  nums_array = num.to_s.split("").map(&:to_i)

    nums_array.each do |n|
       total += n * n
    end
       happy_nums(total)
end

p happy_nums(7)

#  7 * 7 = 49
#  4 * 4 + 9 * 9 = 97
#  9 * 9 + 7 * 7 = 130
#  1 * 1 + 3 * 3 + 0 * 0 = 10
#  1 * 1 = 1