class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def invert_tree(root)
  return if root.nil?

  root.left, root.right = root.right, root.left
  invert_tree(root.right)
  invert_tree(root.left)
  root
end


##################################################
# Sample data
##################################################

#root = TreeNode.new(4)
#root.left = TreeNode.new(2)
#root.right = TreeNode.new(7)

#root.left.left = TreeNode.new(1)
#root.left.right = TreeNode.new(3)

#root.right.left = TreeNode.new(6)
#root.right.right = TreeNode.new(9)

#invert_tree(root)
