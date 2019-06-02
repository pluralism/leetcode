/**
 * @param {number[]} A
 * @return {number}
 */
var repeatedNTimes = function(A) {
    const visited = new Set();
    
    for (const n of A) {
        if(visited.has(n)) {
            return n;
        }
        visited.add(n);
    }

    return 0;
};
