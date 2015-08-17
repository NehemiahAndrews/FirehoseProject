class Tree
    attr_accessor :payload, :children

    def initialize(payload, children)
        @payload = payload
        @children = children
    end
end

# Pass in the starting node of the tree and the value being
def dfs(tree_node,search_value)
  @current_node = tree_node
  if @current_node.payload == search_value
    puts "Current Node = #{@current_node.payload}"
    return @current_node
  else
    puts "Invalid Node = #{@current_node.payload}"
    if !tree_node.children.empty?
      tree_node.children.each do |node|
        if @current_node.payload != search_value
          dfs(node,search_value)
        end
      end
    end
  end
end


def bfs(node,search_value)
  puts "\nStarting BFS"
  
  # create Queue
  q = Queue.new
  
  #create working node
  current_node = node

  # check for search success, loop on failure.
  while current_node.payload != search_value  

    # push child nodes into queue
    current_node.children.each do |node| 
      q.nq(node)
    end

    # pop value off queue to check next
    current_node = q.dq()  
  end

  puts current_node.payload
  return current_node
end



class Queue
    def initialize
        @queue = []
    end

    def nq(item)
        @queue.push(item)
    end

    def dq
        @queue.shift
    end
end



# The "Leafs" of a tree, elements that have no children
fifth_node    = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])


# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, fifth_node])

puts dfs(trunk,11)
puts bfs(trunk,11)

