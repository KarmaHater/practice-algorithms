def x(array)
  answer = []
  excluded_num = []
  array.each_with_index do |num, i|
     excluded_num << array.delete(num)
     answer << array.inject(:*)
     array.insert( i, excluded_num.first)
     excluded_num = []
  end
  answer
end

p x [1,7, 3, 4]