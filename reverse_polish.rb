#1.Use a stack
#2.Take element, if it not a math symbol push on to stack
#3.If a math symbol, pop two elements from the stack, do math
#4.Push result back on stack
#5.Keep doing this till you are at the end of array.length
#6.Pop the last element out and return


def reverse_polish(array)
  stack = []
  array.each do |element|
    case element
    when "+"
      stack << stack.pop + stack.pop
    when "/"
      a = stack.pop
      b = stack.pop
      stack << b/a
    when "-"
      a = stack.pop
      b = stack.pop
      stack << b - a
    when "*"
      stack << stack.pop * stack.pop
    else
      stack << element.to_i
    end
  end
  stack.pop
end

array = ["2", "1", "+", "3", "*"]
array2 = ["4", "13", "5", "/", "+"]
p reverse_polish(array)
p reverse_polish(array2)