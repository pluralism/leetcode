/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var subsets = function(nums) {
    const result = [[]];
    helper(nums, 0, [], result);
    return result;
};

function helper(array, index, temp, result) {
    for (let i = index; i < array.length; i++) {
        const subset = [...temp, array[i]];
        result.push(subset);
        helper(array, i + 1, subset, result);
    }
}
