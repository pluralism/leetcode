var lowestCommonAncestor = function(root, p, q) {
    const stack = [root];
    const parents = {};
    let foundCount = 0;
    while(foundCount < 2) {
        const top = stack.shift();
        if (top.right) {
            parents[top.right.val] = top;
            stack.unshift(top.right);
        }
        if (top.left) {
            parents[top.left.val] = top;
            stack.unshift(top.left);
        }
        if (top.val === p.val || top.val === q.val) foundCount++;
    }
    const pPath = new Set().add(p.val);
    let current = parents[p.val];
    while(current) {
        pPath.add(current.val);
        current = parents[current.val];
    }

    let lca = q;
    while(!pPath.has(lca.val)) lca = parents[lca.val];
    return lca;
};
