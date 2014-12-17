array = [[1,2,3,4],
         [5,6,7,8],
         [9,10,11,12],
         [13,14,15,16]
       ]

def spril_matrix(array)
  answer = []
  while !array.empty?
    answer << array.shift
    array = array.transpose.reverse
  end
  answer.flatten
end
p spril_matrix(array)

# [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]