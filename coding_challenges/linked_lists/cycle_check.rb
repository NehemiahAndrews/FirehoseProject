class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def is_infinite(first_node)
  tortoise = first_node
  hare = first_node


  while true
    if hare.next_node == nil
      return false
    end
    hare = hare.next_node

    if hare.next_node == nil
      return false
    end

    hare = hare.next_node
    tortoise = tortoise.next_node

    if hare == tortoise
      return true
    end
  end

end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

puts is_infinite(node1)