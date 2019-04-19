/** 
 * @param {number[][]} a 
 * @param {number[][]} b
 * @returns {number[][]} 
 */
var intervalIntersection = function(a, b) {
    const pairs = [];

    for(let [x, y] of a) {
        const elements = b.filter(e => (x <= e[0] && y >= e[0] && y <= e[1]) ||
            (e[0] <= x && e[1] >= x) || (e[0] >= x && e[1] <= y));
            
        for(let e of elements) {
            pairs.push([Math.max(x, e[0]), Math.min(y, e[1])]);
        }
    }

    return pairs;
};
