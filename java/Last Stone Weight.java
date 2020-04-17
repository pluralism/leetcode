class Solution {
    public int lastStoneWeight(int[] stones) {
       int index = stones.length - 1;
        while (index > 0) {
            Arrays.sort(stones, 0, index + 1);
            if (stones[index] != stones[index - 1]) {
                stones[index - 1] = stones[index] - stones[index - 1];
                index--;
            } else {
                index -= 2;
            }
        }
        return index < 0 ? 0 : stones[0];
    }
}
