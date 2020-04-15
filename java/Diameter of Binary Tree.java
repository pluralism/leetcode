import java.util.stream.IntStream;

public class Solution {
    static class Result {
        int maxHeight;
        int maxPath;

        Result(int maxHeight, int maxPath) {
            this.maxHeight = maxHeight;
            this.maxPath = maxPath;
        }
    }

    public int diameterOfBinaryTree(TreeNode root) {
        return helper(root, new Result(0, 0)).maxPath;
    }

    public Result helper(TreeNode node, Result result) {
        if (node == null) {
            return result;
        }

        Result leftChildTree = new Result(0, 0);
        if (node.left != null) {
            final Result left = helper(node.left, result);
            leftChildTree = new Result(1 + left.maxHeight, left.maxPath);
        }

        Result rightChildTree = new Result(0, 0);
        if (node.right != null) {
            final Result right = helper(node.right, result);
            rightChildTree = new Result(1 + right.maxHeight, right.maxPath);
        }

        final int bestHeight = Math.max(leftChildTree.maxHeight, rightChildTree.maxHeight);
        final int bestResult = IntStream
                .of(leftChildTree.maxPath, rightChildTree.maxPath, leftChildTree.maxHeight + rightChildTree.maxHeight)
                .max()
                .getAsInt();

        return new Result(bestHeight, bestResult);
    }
}
