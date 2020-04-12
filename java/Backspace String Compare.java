public class Main {
    public static void main(String[] args) {
        final String S = "a#c";
        final String T = "b";
        System.out.println(backspaceCompare(S, T));
    }

    // O(N) time and O(1) space
    public static boolean backspaceCompare(final String S, final String T) {
        int i = S.length() - 1, j = T.length() - 1;
        int sJumps = 0, tJumps = 0, sSize = 0, tSize = 0;
        while (i >= 0 || j >= 0) {
            while (i >= 0 && (sJumps > 0 || S.charAt(i) == '#')) {
                sJumps = S.charAt(i) == '#' ? sJumps + 1 : sJumps - 1;
                i--;
            }

            while (j >= 0 && (tJumps > 0 || T.charAt(j) == '#')) {
                tJumps = T.charAt(j) == '#' ? tJumps + 1 : tJumps - 1;
                j--;
            }

            if (i >= 0 && j >= 0 && S.charAt(i) != T.charAt(j)) {
                return false;
            }

            if (i >= 0) {
                sSize++;
            }

            if (j >= 0) {
                tSize++;
            }

            i--;
            j--;
        }
        return sSize == tSize;
    }
}
