using System;
using System.Collections.Generic;

namespace LeetCode
{
    class Solution
    {
        public int MaxAreaOfIsland(int[,] grid)
        {
            int max = 0;
            HashSet<Tuple<int, int>> visited = new HashSet<Tuple<int, int>>();
            int[][] dirs = new int[][] { new[] { 1, 0 }, new[] { -1, 0 }, new[] { 0, 1 }, new[] { 0, -1 } };

            for (int i = 0; i < grid.GetLength(0); i++)
            {
                for(int j = 0; j < grid.GetLength(1); j++)
                {
                    var pair = Tuple.Create(i, j);
                    if (grid[i, j] == 0 || visited.Contains(pair))
                    {
                        continue;
                    }

                    int total = 1;
                    var stack = new Stack<Tuple<int, int>>();
                    stack.Push(pair);
                    visited.Add(pair);

                    while(stack.Count > 0)
                    {
                        Tuple<int, int> elem = stack.Pop();

                        foreach(int[] dir in dirs)
                        {
                            if(elem.Item1 + dir[0] >= 0 && elem.Item1 + dir[0] < grid.GetLength(0) && elem.Item2 + dir[1] >= 0 && elem.Item2 + dir[1] < grid.GetLength(1))
                            {
                                pair = Tuple.Create(elem.Item1 + dir[0], elem.Item2 + dir[1]);
                                if(grid[pair.Item1, pair.Item2] == 1 && !visited.Contains(pair))
                                {
                                    stack.Push(pair);
                                    visited.Add(pair);
                                    total++;
                                }
                            }
                        }
                    }
                    max = Math.Max(max, total);
                }
            }
            return max;
        }
    }
}
