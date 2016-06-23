/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
public class Solution {
    public void levelOrderBottomAux(TreeNode root, List<List<Integer>> list, int depth) {
        if(root == null)
            return;

        if(list.size() <= depth)
            list.add(depth, new ArrayList<>());
        list.get(depth).add(root.val);
        levelOrderBottomAux(root.left, list, depth + 1);
        levelOrderBottomAux(root.right, list, depth + 1);
    }
    
    public List<List<Integer>> levelOrderBottom(TreeNode root) {
        List<List<Integer>> vals = new ArrayList<>();

        levelOrderBottomAux(root, vals, 0);
        Collections.reverse(vals);
        return vals;
    }
}
