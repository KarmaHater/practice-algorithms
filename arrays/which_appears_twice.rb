# I have an array where every number in the range 1...n appears once except for one number which appears twice. Write a function for finding the number that appears twice.

array = [1,2,3,4,4,6,6]

def method_name(array)
  collection_hash = Hash.new(0)
  repeated_nums = []
  array.each do |num|
    collection_hash[num] += 1
    repeated_nums <<  num if collection_hash[num] > 1
  end
  repeated_nums
end

p method_name(array)

