import java.util.ArrayDeque;
import java.util.Deque;

public class Solution {
    public int numIslands(char[][] grid) {
        final int[] dy = { -1, 1, 0, 0};
        final int[] dx = { 0, 0, -1, 1 };
        int islands = 0;

        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {
                if (grid[i][j] == '1') {
                    final Deque<Long> Q = new ArrayDeque<>();
                    Q.add(((long)i << 32) | j);

                    while (!Q.isEmpty()) {
                        final long head = Q.poll();
                        final int y = (int) (head >> 32);
                        final int x = (int) head;
                        grid[y][x] = '2';
                        for (int k = 0; k < 4; k++) {
                            final int newY = y + dy[k];
                            final int newX = x + dx[k];
                            if (newY >= 0 && newY < grid.length && newX >= 0
                                    && newX < grid[0].length && grid[newY][newX] == '1') {
                                final long n = ((long)newY << 32) | newX;
                                Q.push(n);
                            }
                        }
                    }
                    islands++;
                }
            }
        }
        return islands;
    }
}
