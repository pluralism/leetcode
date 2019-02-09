namespace ConsoleApp1
{
    public class Solution
    {
        public int IslandPerimeter(int[,] grid)
        {
            var perimeter = 0;
            
            for (var i = 0; i < grid.GetLength(0); i++)
            {
                for (var j = 0; j < grid.GetLength(1); j++)
                {
                    if (grid[i, j] != 1) continue;
                    perimeter += 4;

                    if (i > 0 && grid[i - 1, j] == 1) perimeter--;
                    if (j > 0 && grid[i, j - 1] == 1) perimeter--;
                    if (i < grid.GetLength(0) - 1 && grid[i + 1, j] == 1) perimeter--;
                    if (j < grid.GetLength(1) - 1 && grid[i, j + 1] == 1) perimeter--;
                }
            }
            
            return perimeter;
        }
    }
}