def sort(a,b)
  i = 0
  a.each_with_index do |num, index|
    if b.empty?
      break
    elsif num > b[i]
      a.insert(index, b.shift)
    end
  end
  a + b
end

p sort [1,3,7],[2,4,6]

p sort [1,9,11],[2,4,12]

p sort [1,9,11],[2,4,12,45,76,83]