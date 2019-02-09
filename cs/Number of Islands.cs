using System;
using System.Collections.Generic;

namespace leetcode
{
    class Solution
    {
        private void FillCells(char[,] grid, int row, int column)
        {
            int rows = grid.GetLength(0); // O(1) operation
            int columns = grid.GetLength(1);
            Stack<Tuple<int, int>> st = new Stack<Tuple<int, int>>();
            st.Push(Tuple.Create(row - 1, column));
            st.Push(Tuple.Create(row + 1, column));
            st.Push(Tuple.Create(row, column - 1));
            st.Push(Tuple.Create(row, column + 1));

            while(st.Count > 0)
            {
                Tuple<int, int> tuple = st.Pop();
                if(tuple.Item1 < 0 || tuple.Item1 >= rows || tuple.Item2 < 0 || tuple.Item2 >= columns || grid[tuple.Item1, tuple.Item2] != '1')
                {
                    continue;
                }

                grid[tuple.Item1, tuple.Item2] = 'A';

                st.Push(Tuple.Create(tuple.Item1 - 1, tuple.Item2));
                st.Push(Tuple.Create(tuple.Item1 + 1, tuple.Item2));
                st.Push(Tuple.Create(tuple.Item1, tuple.Item2 - 1));
                st.Push(Tuple.Create(tuple.Item1, tuple.Item2 + 1));
            }
        }

        public int NumIslands(char[,] grid)
        {
            int rows = grid.GetLength(0);
            int columns = grid.GetLength(1);

            int islands = 0;
            for(int i = 0; i < rows; i++)
            {
                for(int j = 0; j < columns; j++)
                {
                    if(grid[i, j] == '1')
                    {
                        islands++;
                        FillCells(grid, i, j);
                    }
                }
            }

            return islands;
        }
    }
}
