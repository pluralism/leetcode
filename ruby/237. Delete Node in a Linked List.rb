class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
end


node1 = ListNode.new(1)
node2 = ListNode.new(2)
node3 = ListNode.new(3)
node4 = ListNode.new(4)

node1.next = node2
node2.next = node3
node3.next = node4

delete_node(node3)

puts node2.next.val
