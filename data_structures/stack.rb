class Stack
  def initialize(max = 10)
    @list = []
    @max = max
  end

  def add(element)
    @list.unshift(element)
  end

  def take_away
    raise "Stack Underflow - The stack is empty" if self.empty?
    @list.shift
  end

  def empty?
    @list.empty?
  end

  def full?
    if @list.length >= @max
      true
    else
      false
    end
  end
end

# create a new stack
my_stack=Stack.new;

# verify there are no elements on the new stack

puts "The stack is empty? #{my_stack.empty?}"

# add 3 elements to the stack
 my_stack.add("ruby")
 my_stack.add("is")
 my_stack.add("cool")
 my_stack

# since our stack is implemented on array we can add any type of object
my_stack.add(15)

# look at all the elements in the stack by take_awayping them off one at time

puts "Next Element: #{my_stack.take_away}"
puts "Next Element: #{my_stack.take_away}"
puts "Next Element: #{my_stack.take_away}"
puts "Next Element: #{my_stack.take_away}"

# verify there are no elements left on the stack
puts "The stack is empty? #{my_stack.empty?}"

# what happens if you try to call take_away on an empty stack?
puts "Trying to remove an item from an empty stack ... "
puts "Next Element: #{my_stack.take_away}"