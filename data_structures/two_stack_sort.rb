require 'pry'

# page 80

# def sort_stack(stack)
#   helper_stack = []
#   helper_stack << stack.pop
#   # p helper_stack

#   # p stack

#     if helper_stack.first < stack.last
#       helper_stack << stack.pop
#     else
#       helper_stack << stack
#       helper_stack.flatten
#     end

# p helper_stack
# end

# array = [1,2,3].shuffle
# # p array
# sort_stack(array)

class MyQueue
  def initialize(stack)
    @stack = stack
    @helper_stack = []
  end

  def peek
    stack.last
  end

  def remove
    stack.pop
  end
end
my_stack = MyQueue.new([1,2,3,4])

if my_stack.helper_stack.empty?
  i = 0
  while !my_stack.stack.empty?
    my_stack.helper_stack.push(my_stack.stack.pop)
    i+=1
  end
end
