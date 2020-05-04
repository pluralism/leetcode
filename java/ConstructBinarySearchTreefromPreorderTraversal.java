class Solution {
    int index = 0;

    public TreeNode bstFromPreorder(int[] preorder) {
        return helper(preorder, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public TreeNode helper(int[] preorder, int min, int max) {
        if (index >= preorder.length || preorder[index] < min || preorder[index] > max) return null;
        TreeNode root = new TreeNode(preorder[index]);
        index++;
        root.left = helper(preorder, min, root.val);
        root.right = helper(preorder, root.val, max);
        return root;
    }
}
