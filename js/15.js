var threeSum = function(nums) {
    nums.sort((a, b) => +a - +b);
    const result = [];
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] > 0 || (i > 0 && nums[i] === nums[i - 1])) continue;
        let left = i + 1;
        let right = nums.length - 1;

        while (left < right) {
            const sum = nums[i] + nums[left] + nums[right];
            if (!sum) result.push([nums[i], nums[left], nums[right]]);
            if (sum <= 0) {
                left++;
                while (nums[left] === nums[left - 1]) left++;
            } else {
                right--;
                while (nums[right] === nums[right + 1]) right--;
            }
        }
    }
    return result;
};
