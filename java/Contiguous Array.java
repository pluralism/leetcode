import java.util.HashMap;

class Solution {
    public int findMaxLength(int[] nums) {
        int maxLength = 0;
        final HashMap<Integer, Integer> dp = new HashMap<>();
        dp.put(0, -1);
        int sum = 0;
        for (int i = 0; i < nums.length; i++) {
            sum += nums[i] == 0 ? 1 : -1;
            dp.putIfAbsent(sum, i);
            maxLength = Math.max(maxLength, i - dp.get(sum));
        }
        return maxLength;
    }
}
