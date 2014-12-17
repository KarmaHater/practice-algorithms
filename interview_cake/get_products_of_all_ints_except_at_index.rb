# def get_products_of_all_ints_except_at_index(array)
#   answer = []
#   excluded_num = []
#   array.each_with_index do |num, i|
#      excluded_num << array.delete(num)
#      answer << array.inject(:*)
#      array.insert( i, excluded_num.first)
#      excluded_num = []
#   end
#   answer
# end

def get_products_of_all_ints_except_at_index(array)
  answer = []
  array.count.times do
    num = array.shift
    answer << array.inject(:*)
    array << num
  end
  answer
end


p get_products_of_all_ints_except_at_index [1,7,3,4]