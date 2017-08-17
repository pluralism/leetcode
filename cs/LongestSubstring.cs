using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Solution
    {
        public int LengthOfLongestSubstring(string s)
        {
            Dictionary<char, Tuple<int, int>> vals = new Dictionary<char, Tuple<int, int>>();
            HashSet<char> chars = new HashSet<char>();
            int best = 0, current = 0;
            for (int i = 0; i < s.Length; i++)
            {
                char c = s[i];
                if(!vals.ContainsKey(c))
                    vals[c] = new Tuple<int, int>(i, i);
                else
                    vals[c] = new Tuple<int, int>(vals[c].Item2, i);

                if(chars.Contains(c))
                {
                    i = vals[c].Item1 + 1;
                    chars.Clear();
                    chars.Add(s[i]);
                    current = 1;
                } else
                {
                    current++;
                    chars.Add(c);
                }
                best = Math.Max(current, best);
            }
            return best;
        }
    }
}
