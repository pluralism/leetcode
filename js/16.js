/**
 * @param {number[]} nums 
 * @param {number} target 
 * @return {number}
 */
const threeSumClosest = (nums, target) => {
    let result = Number.MAX_SAFE_INTEGER;
    let bestSum = Number.MAX_SAFE_INTEGER;

    nums.sort((a, b) => a - b);

    for(let i = 0; i < nums.length; i++) {
        let j = i + 1;
        let k = nums.length - 1;

        while(j < k && j < nums.length) {
            const sum = nums[i] + nums[j] + nums[k];
            const diff = sum - target;
            const absDiff = Math.abs(diff);

            if(absDiff < result) {
                result = absDiff;
                bestSum = sum;
            }

            if(absDiff === 0) {
                return target;
            }

            if(diff < 0) {
                j++;
            } else {
                k--;
            }
        }
    }

    return bestSum;
};