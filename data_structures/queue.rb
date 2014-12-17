class queue
  def initialize(max = 10)
    @list = []
    @max = max
  end

  def add(element)
    @list.push(element)
  end

  def take_away
    raise "queue Underflow - The queue is empty" if self.empty?
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

# create a new queue
my_queue=queue.new;

# verify there are no elements on the new queue

puts "The queue is empty? #{my_queue.empty?}"

# add 3 elements to the queue
 my_queue.add("ruby")
 my_queue.add("is")
 my_queue.add("cool")
 my_queue

# since our queue is implemented on array we can add any type of object
my_queue.add(15)

# look at all the elements in the queue by take_awayping them off one at time

puts "Next Element: #{my_queue.take_away}"
puts "Next Element: #{my_queue.take_away}"
puts "Next Element: #{my_queue.take_away}"
puts "Next Element: #{my_queue.take_away}"

# verify there are no elements left on the queue
puts "The queue is empty? #{my_queue.empty?}"

# what happens if you try to call take_away on an empty queue?
puts "Trying to remove an item from an empty queue ... "
puts "Next Element: #{my_queue.take_away}"