/**
 * @param {string} S
 * @return {number[]}
 */
let partitionLabels = function(S) {
    let partitions = [];
    let leftIndex = 0;
    let rightIndex = Math.max(leftIndex, S.indexOf(S[leftIndex], leftIndex + 1));

    while(rightIndex < S.length)
    {
        for(let i = leftIndex + 1; i <= rightIndex && i < S.length; i++) {
            const index = S.indexOf(S[i], i + 1);
            rightIndex = Math.max(index, rightIndex);
        }
        partitions.push(rightIndex - leftIndex + 1);

        leftIndex = rightIndex + 1;
        rightIndex = Math.max(leftIndex, S.indexOf(S[leftIndex], leftIndex + 1));
    }
    return partitions;
};