using System;

namespace ConsoleApp1
{
    public class Solution
    {
        public string LongestPalindrome(string s)
        {
            var best = 0;
            int left = 0, right = 0;
            
            for (var i = 0; i < s.Length; i++)
            {
                var expand = ExpandString(s, i, i);
                var expand2 = ExpandString(s, i, i + 1);

                var tmpBest = Math.Max(expand, expand2);
                if (tmpBest > best)
                {
                    left = i - (tmpBest - 1) / 2;
                    right = i + tmpBest / 2;
                    best = right - left;
                }
            }

            return s.Substring(left, right - left + 1);
        }

        private int ExpandString(string s, int left, int right)
        {
            while (left >= 0 && right < s.Length && s[left] == s[right])
            {
                left--;
                right++;
            }

            return right - left - 1;
        }
    }
}