class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

def is_valid_bst_aux(root, min, max)
  return true if root.nil?
  return false if root.val <= min or root.val >= max

  return is_valid_bst_aux(root.left, min, root.val) && is_valid_bst_aux(root.right, root.val, max)
end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  is_valid_bst_aux(root, Integer::MIN, Integer::MAX)
end
