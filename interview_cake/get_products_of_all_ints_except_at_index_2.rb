def get_products_of_all_ints_except_at_index(array)
  products_array = []
  array.each_with_index do |num, i|
    array.delete(num)
    products_array << array.inject(:*)
    array.insert(i, num)
  end
  p products_array
end

get_products_of_all_ints_except_at_index([1,7,3,4])