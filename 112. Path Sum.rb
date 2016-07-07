
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end


def has_path_sum_tail_recursive(root, sum, currentSum)
  return false if root.nil?
  return true if sum == currentSum and root.left.nil? and root.right.nil?

  has_path_sum_tail_recursive(root.left, sum, currentSum + (root.left.nil? ? 0 : root.left.val)) ||
    has_path_sum_tail_recursive(root.right, sum, currentSum + (root.right.nil? ? 0 : root.right.val))
end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false if root.nil?
  return has_path_sum_tail_recursive(root, sum, root.val)
end


root = TreeNode.new(5)
l1 = TreeNode.new(4)
r1 = TreeNode.new(8)
l2 = TreeNode.new(11)
l3 = TreeNode.new(7)
r2 = TreeNode.new(2)
l4 = TreeNode.new(13)
r3 = TreeNode.new(4)
l5 = TreeNode.new(1)


root.left = l1
root.right = r1
l1.left = l2
l2.left = l3
l2.right = r2
r1.left = l4
r1.right = r3
r3.right = l5

puts has_path_sum(root, 22)
