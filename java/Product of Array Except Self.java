public class Solution {
    public int[] productExceptSelf(int[] nums) {
        int[] result = new int[nums.length];
        int accumulator = 1;

        for (int i = 0; i < nums.length; i++) {
            result[i] = accumulator * nums[i];
            accumulator *= nums[i];
        }

        accumulator = 1;
        for (int i = nums.length - 1; i >= 0; i--) {
            result[i] = (i != 0 ? result[i - 1] : 1) * accumulator;
            accumulator *= nums[i];
        }
        return result;
    }
}
