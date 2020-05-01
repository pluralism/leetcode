class Solution {
    public int maxSubArray(int[] nums) {
        int maxEndingHere = nums[0];
        int currentBest = maxEndingHere;
        for (int i = 1; i < nums.length; i++) {
            currentBest = Math.max(currentBest + nums[i], nums[i]);
            maxEndingHere = Math.max(maxEndingHere, currentBest);
        }
        return maxEndingHere;
    }
}
