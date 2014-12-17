require "pry"
def mergesort(array)

  if array.count == 1
    return array
  end

  mid = array.count / 2
  part_a = mergesort(array.take(mid))
  part_b = mergesort(array.drop(mid))
  index_a = 0
  index_b = 0
  sorted_array = []

  while index_a < part_a.count && index_b < part_b.count
    a = part_a[index_a]
    b = part_b[index_b]
    if a < b
      sorted_array << a
      index_a += 1
    else
      sorted_array << b
      index_b += 1
    end
  end

  while index_a < part_a.count
    sorted_array << part_a[index_a]
    index_a += 1
  end

  while index_b < part_b.count
    sorted_array << part_b[index_b]
    index_b += 1
  end
  sorted_array
end

# b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle

b = [1, 2, 3, 4].shuffle
# Mergesort operates in new array
# So we need to reassign
b = mergesort b
p b
puts "merge_sort"
