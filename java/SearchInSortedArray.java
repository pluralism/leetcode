class Solution {
    public int search(int[] nums, int target) {
        return helper(nums, target, 0, nums.length - 1);
    }

    private int helper(int[] nums, int target, int l, int r) {
        if (l > r) {
            return -1;
        }

        int mid = (l + r) / 2;
        if (nums[mid] == target) {
            return mid;
        }

        if (nums[mid] >= nums[l]) {
            if (target >= nums[l] && target <= nums[mid]) {
                return helper(nums, target, l, mid - 1);
            }
        } else if (target < nums[mid] || target > nums[r]) {
            return helper(nums, target, l, mid - 1);
        }
        return helper(nums, target, mid + 1, r);
    }
}
