def best_sale(list)
  outer = list
  inner = list
  result = []

  outer.each_with_index do |a, i|
    inner.each_with_index do |b, index|
      if i < index
        result << (a - b)
      end
    end
  end
end