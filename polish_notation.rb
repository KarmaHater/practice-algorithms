def polish_notation(array)
  stack = []
  array.reverse!.each do |element|
    case element
    when "+"
      stack << stack.pop + stack.pop
    when "-"
      stack << stack.pop - stack.pop
    when "*"
      stack << stack.pop * stack.pop
    when "/"
      stack << stack.pop / stack.pop
    else
      stack << element.to_i
    end
  end
  return stack.pop
end
array = ["*", "3","+", "4", "5"]
p polish_notation(array)