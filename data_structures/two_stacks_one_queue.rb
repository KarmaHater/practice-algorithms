class Queue
  def initialize
    @stack_one = []
    @stack_two = []
  end

  def end_queue
    index = @stack_one.length-1
    while index >= 0
      @stack_two.push(@stack_one[index])
      index-= 1
    end
     top_of_stack = @stack_two.pop
     reset
     top_of_stack
  end

  def reset
    index = @stack_two.length-1
    @stack_one.clear
    while index >= 0
      @stack_one << @stack_two[index]
      index-=1
    end
    @stack_two.clear
  end

  def add_queue(thing)
    @stack_one << thing
  end
end

# pop push

my_list = Queue.new()

 my_list.add_queue(1)
 my_list.add_queue(2)
 my_list.add_queue(3)
p my_list.end_queue
p my_list.end_queue

# p my_list.end_queue


# can't shift and unshift