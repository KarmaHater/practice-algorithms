# What if we push several items in increasing numeric order (e.g. 1,2,3,4...), so that there is a new largest after each push()? What if we then pop() each of these items off, so that there is a new largest after each pop()? Your algorithm shouldn't pay a steep cost in these edge cases.

require 'pry'

class MaxStack
  attr_accessor :stack
  def initialize()
    @largest = []
    @stack = []
  end

  def push(item)
    if @largest.empty?
      @largest << item
    elsif item > @largest.last
      @largest << item
    end
    @stack << item
  end

  def pop
    item = @stack.pop
    if item == @largest.last
      @largest.pop
    end
    return item
  end

  def largest
    @largest.last
  end
end

my_stack = MaxStack.new()
 my_stack.push(1)
 my_stack.push(3)
 my_stack.push(4)
 my_stack.pop
 my_stack.pop
 p my_stack.largest
 p my_stack.stack
 my_stack.push(5)
 my_stack.push(6)
 my_stack.push(7)
 my_stack.pop
 my_stack.pop
 p my_stack.largest
 my_stack.push(6)

