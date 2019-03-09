function TreeNode(val) {
    this.val = val;
    this.left = null;
    this.right = null;
}

function constructMaximumBinaryTree(nums) {
    if(!nums || nums.length === 0) {
        return null;
    }

    const indexOfMax = nums.indexOf(Math.max(...nums));
    
    const root = new TreeNode(nums[indexOfMax]);

    const leftPart = nums.slice(0, indexOfMax);
    const rightPart = nums.slice(indexOfMax + 1);

    root.left = constructMaximumBinaryTree(leftPart);
    root.right = constructMaximumBinaryTree(rightPart);

    return root;
}
