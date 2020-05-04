import java.util.HashSet;

class Solution {
    public boolean isHappy(int n) {
        HashSet<Integer> repeated = new HashSet<>();
        while (n != 1) {
            n = calculateSum(n);
            if (repeated.contains(n)) return false;
            repeated.add(n);
        }
        return true;
    }

    public int calculateSum(int n) {
        int sum = 0;
        while (n > 0) {
            sum += Math.pow(n % 10, 2);
            n /= 10;
        }
        return sum;
    }
}
