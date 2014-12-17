def best_sale(list)
    # so we're not playing with the list of stocks
    outer = list
    inner = list
    result = []

    puts ""
    puts "Best possible buy / sell dates: "

    outer.each_with_index do |a, i|
      inner.each_with_index do |b, j|
        if i < j
          result << (a - b)
        end
      end
    end

    outer.each_with_index do |a, i|
      inner.each_with_index do |b, j|
        if i < j
          if (a - b) == result.min
            puts "Buy on day:  #{i+1}"
            puts "Sell on day: #{j+1}"
            puts "----------"
          end
        end
      end
    end
  prompt
end
array = [1,2,3,4,58,9,12]
p best_sale(array)

array = [7,9,6,2,5,10,1]

def max_profit(array)
  min = array.min
  max = array.max
# p array.index(min)
# p array.index(max)

until array.index(min) < array.index(max)
  array.delete(array.min)
  min = array.min
end


p "#{min}min"
p "#{max}max"

end

max_profit(array)

# try building a hash also

