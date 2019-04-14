function sumRootToLeaf(root) {
    var sum = 0;
    const stack = [{ node: root, sequence: root.val.toString() }];

    while(stack.length > 0) {        
        const current = stack.pop();
        const node = current.node;

        if(node.left) {
            stack.push({ node: node.left, sequence: current.sequence + node.left.val });
        }
    
        if(node.right) {
            stack.push({ node: node.right, sequence: current.sequence + node.right.val });
        }
    
        if(!node.left && !node.right) {
            sum += parseInt(current.sequence, 2);
        }
    }

    return sum;
}
