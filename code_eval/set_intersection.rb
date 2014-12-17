def set_intersection(array_a, array_b)
  hash = Hash.new(0)
  keys = []
  (array_a + array_b).each do |num|
    hash[num] += 1
    if hash[num] > 1
      keys << num
    end
  end
  keys
end

p set_intersection([1,2,3,4],[4,5,6])
p set_intersection([7,8,9],[8,9,10,11,12])