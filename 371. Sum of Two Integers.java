public class Solution {
    public int getSum(int a, int b) {
        int result = a ^ b;
        int carry = a & b;

        while(carry != 0) {
            int newCarry = carry << 1;
            carry = result & newCarry;
            result ^= newCarry;
        }

        return result;
    }
}
