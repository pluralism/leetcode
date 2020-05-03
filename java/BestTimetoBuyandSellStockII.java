class Solution {
    public int maxProfit(int[] prices) {
        int profit = 0;
        int peakStart = 0;
        int previousPrice = prices[0];
        for (int i = 0; i < prices.length; i++) {
            if (prices[i] < previousPrice) {
                profit += previousPrice - prices[peakStart];
                peakStart = i;
            }
            previousPrice = prices[i];
        }
        profit += prices[prices.length - 1] - prices[peakStart];
        return profit;
    }
}
