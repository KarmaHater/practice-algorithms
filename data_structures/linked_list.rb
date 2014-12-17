require "pry"
class Node
  attr_accessor :next
  attr_reader :node
  def initialize(value, next_node = nil)
    @node = value
    @next = next_node
  end
end

class LinkList
  attr_reader :list, :node_list
  def initialize
    @node_list = []
  end

  def add(value)
    new_node = Node.new(value, nil)
    if !@node_list.empty?
      @node_list.last.next = new_node
    end
      @node_list << new_node
  end

  def delete(node_value)
    return "Nothing in your list." if @node_list.empty?
    @node_list.each_with_index do |node, index|
      if node.node == node_value
        preceding_node = find_before(node)
        preceding_node.next = node.next
        @node_list.delete_at(index)
      end
    end
  end

  def find_before(find_node)
    @node_list.each_with_index do |node, index|
      if node == find_node
        return @node_list[index - 1]
      end
    end
  end

  def list
    @last_node = @node_list.pop
    @node_list.map{|node| "#{node.node} => " }.join(" ") + @last_node.node
  end

end

my_list = LinkList.new()

my_list.add("hey")
my_list.add("poop")
my_list.find_before(my_list.node_list[1])
my_list.add("fart")
# p my_list.list
my_list.delete("poop")
p my_list.list
