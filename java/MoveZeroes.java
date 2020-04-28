class Solution {
    public void moveZeroes(int[] nums) {
        int p1 = 0, p2 = 0;
        while (true) {
            while (p1 < nums.length && nums[p1] != 0) p1++;
            if (p1 > p2) p2 = p1;
            while (p2 < nums.length && nums[p2] == 0) p2++;
            if (p1 < nums.length && p2 < nums.length) {
                nums[p1] ^= nums[p2];
                nums[p2] ^= nums[p1];
                nums[p1] ^= nums[p2];
            } else break;
        }
    }
}
