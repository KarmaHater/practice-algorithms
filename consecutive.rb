# def x(array)
#   number_hash = {}
#   length_array = []
#   lowest = array[0]
#   array.each do |num|
#     number_hash[num] = "puppies"
#     if num < lowest
#       lowest = number_hash[num]
#     end
#   end
#   number_hash.each_key do |k|
#     keys = number_hash.keys.length
#     i = 0
#     counter = 0
#     while i < keys
#       if number_hash.has_key?(k + 1)
#         counter+=1
#         length_array << counter
#       else
#         counter = 0
#       end
#       i+= 1
#     end
#   end
#   length_array
# end

def x(array)
  array.sort!
  answers = []
 array.each_with_index do |num|
  i = 0
  counter = 0
  p array.length
  while i < array.length
    if array.include?(num + 1)
      counter+=1
      i+=1
    else
      answers << counter
      i+=1
    end
  end
 end
 answers
end

array = [1,2,3,4,60,50,70]
p x(array)