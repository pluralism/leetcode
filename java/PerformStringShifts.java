class Solution {
    public String stringShift(String s, int[][] shift) {
        int count = 0;
        for (int[] ints : shift) count += ints[0] == 0 ? -ints[1] : ints[1];
        if (count == 0) return s;
        char[] result = new char[s.length()];
        for (int i = 0; i < s.length(); i++) {
            int newIndex = (i + count) % s.length();
            if (newIndex < 0) newIndex += s.length();
            result[newIndex] = s.charAt(i);
        }
        return new String(result);
    }
}
