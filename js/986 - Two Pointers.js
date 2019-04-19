/** 
 * @param {number[][]} a 
 * @param {number[][]} b
 * @returns {number[][]} 
 */
var intervalIntersection = function(a, b) {
    const pairs = [];
    let i = j = 0;

    while(i < a.length && j < b.length) {
        const pairA = a[i];
        const pairB = b[j];

        const [minPair, maxPair] = pairA[0] < pairB[0] ? [pairA, pairB] : [pairB, pairA];

        if(minPair[1] >= maxPair[0]) {
            pairs.push([Math.max(minPair[0], maxPair[0]), Math.min(minPair[1], maxPair[1])]);
        }

        if(pairB[1] > pairA[1]) {
            i++;
        } else {
            j++;
        }
    }

    return pairs;
};
