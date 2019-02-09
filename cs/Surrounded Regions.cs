using System;
using System.Collections.Generic;

namespace LeetCode
{
    class Program
    {
        public void Solve(char[,] board)
        {
            var positions = new HashSet<Tuple<int, int>>();

            for (var i = 1; i < board.GetLength(0) - 1; i++)
            {
                for (var j = 1; j < board.GetLength(1) - 1; j++)
                {
                    if(board[i, j] != 'O') continue;
                    
                    positions.Add(Tuple.Create(i, j));
                    if (i + 1 == board.GetLength(0) - 1 && board[i + 1, j] == 'O')
                    {
                        board[i, j] = 'I';
                        continue;
                    }

                    if (i - 1 == 0 && board[i - 1, j] == 'O')
                    {
                        board[i, j] = 'I';
                        continue;
                    }
                    
                    if (j + 1 == board.GetLength(1) - 1 && board[i, j + 1] == 'O')
                    {
                        board[i, j] = 'I';
                        continue;
                    }
                    
                    if (j - 1 == 0 && board[i, j - 1] == 'O')
                    {
                        board[i, j] = 'I';
                    }   
                }
            }

            foreach (var position in positions)
            {
                if (board[position.Item1, position.Item2] == 'I')
                {
                    var stack = new Stack<Tuple<int, int>>();
                    stack.Push(position);

                    while (stack.Count > 0)
                    {
                        var elem = stack.Pop();
                        
                        if (elem.Item1 > 0 && elem.Item1 < board.GetLength(0) - 1 && board[elem.Item1 - 1, elem.Item2] == 'O')
                        {
                            board[elem.Item1 - 1, elem.Item2] = 'I';
                            stack.Push(Tuple.Create(elem.Item1 - 1, elem.Item2));
                        }

                        if (elem.Item1 > 0 && elem.Item1 < board.GetLength(0) - 1 && board[elem.Item1 + 1, elem.Item2] == 'O')
                        {
                            board[elem.Item1 + 1, elem.Item2] = 'I';
                            stack.Push(Tuple.Create(elem.Item1 + 1, elem.Item2));
                        }

                        if (elem.Item2 > 0 && elem.Item2 < board.GetLength(1) - 1 && board[elem.Item1, elem.Item2 - 1] == 'O')
                        {
                            board[elem.Item1, elem.Item2 - 1] = 'I';
                            stack.Push(Tuple.Create(elem.Item1, elem.Item2 - 1));
                        }

                        if (elem.Item2 > 0 && elem.Item2 < board.GetLength(1) - 1 && board[elem.Item1, elem.Item2 + 1] == 'O')
                        {
                            board[elem.Item1, elem.Item2 + 1] = 'I';
                            stack.Push(Tuple.Create(elem.Item1, elem.Item2 + 1));
                        }
                    }   
                }
            }
            
            for (var i = 0; i < board.GetLength(0); i++)
            {
                for (var j = 0; j < board.GetLength(1); j++)
                {
                    if (board[i, j] == 'O' && positions.Contains(Tuple.Create(i, j)))
                    {
                        board[i, j] = 'X';
                    } else if (board[i, j] == 'I')
                    {
                        board[i, j] = 'O';
                    }
                }
            }
        }
        
        static void Main(string[] args) { }
    }
}