class Solution {
    public boolean canJump(int[] nums) {
        int indexToReach = nums.length - 1;
        for (int i = nums.length - 2; i >= 0 && indexToReach > 0; i--) {
            if (nums[i] >= indexToReach - i) indexToReach = i;
        }
        return indexToReach == 0;
    }
}
