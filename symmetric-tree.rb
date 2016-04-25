class TreeNode
   attr_accessor :val, :left, :right
   def initialize(val)
       @val = val
       @left, @right = nil, nil
   end
end


def is_symmetric(root)
  return true if root.nil? || (root.left.nil? and root.right.nil?)
  evaluate(root.left, root.right)
end

def evaluate(left, right)
  return left == right if left.nil? or right.nil?
  left.val == right.val and evaluate(left.left, right.right) and evaluate(left.right, right.left)
end



node1 = TreeNode.new(1)
node2 = TreeNode.new(2)
node3 = TreeNode.new(2)
node4 = TreeNode.new(3)
node5 = TreeNode.new(4)
node6 = TreeNode.new(4)
node7 = TreeNode.new(3)

node1.left = node2
node1.right = node3
node2.left = node4
node2.right = node5
node3.left = node6
node3.right = node7

puts is_symmetric(node1)
