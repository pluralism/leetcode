import java.util.HashSet;
import java.util.Set;

class Solution {
    public int singleNumber(int[] nums) {
        Set<Integer> repeated = new HashSet<>();
        for (int num : nums) {
            if (repeated.contains(num)) {
                repeated.remove(num);
            } else {
                repeated.add(num);
            }
        }
        return repeated.iterator().next();
    }
}
