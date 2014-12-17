
#merge our Girl Scout Cookies orders and enter as one unit.
# Each order is represented by an "order id" (an integer).
# We have our lists of orders sorted numerically already, in arrays. Write a function to merge our arrays of orders into one sorted array.

def merge_arrays(a, b)
  merged_array = []
 while a.count >= 1 && b.count >= 1
    if a[0] < b[0]
       merged_array << a.shift
    elsif a[0] > b[0]
      merged_array << b.shift
    end
 end
  !a.empty? if merged_array << a
  !b.empty? if merged_array << b
  merged_array.flatten
end

alices_array = [1,5,8,12,14,19]
my_array     = [3,4,6,10,11,15]
p merge_arrays(alices_array, my_array)