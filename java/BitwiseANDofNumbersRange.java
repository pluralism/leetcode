class Solution {
    public int rangeBitwiseAnd(int m, int n) {
        int result = m;
        int current = m;
        while (current < n && result > 0) result &= ++current;
        return result;
    }
}
