class Solution {
    public int maximalSquare(char[][] m) {
        int sideLen = 0;
        int[][] dp = new int[m.length + 1][m.length > 0 ? m[0].length + 1 : 0];
        for (int i = 1; i <= m.length; i++) {
            for (int j = 1; j <= m[0].length; j++) {
                if (m[i - 1][j - 1] == '1') {
                    dp[i][j] = 1 + Math.min(Math.min(dp[i - 1][j], dp[i][j - 1]), dp[i - 1][j - 1]);
                    sideLen = Math.max(sideLen, dp[i][j]);
                }
            }
        }
        return (int) Math.pow(sideLen, 2);
    }
}
