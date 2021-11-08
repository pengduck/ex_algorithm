using System;
using System.IO;

namespace exAlgorithm
{
    class Program
    {
        static int[] board = new int[15];

        static int boardSize = 0;

        static int result = 0;
        
        static StreamWriter output = new System.IO.StreamWriter(Console.OpenStandardOutput());

        static void Main(string[] args)
        {

            boardSize = int.Parse(Console.ReadLine());

            queen(0);

            output.Write(result);
            output.Close();
        }

        static bool check(int col) {
            for(int row = 0; row < col; row++) {
                if(board[row] == board[col] || Math.Abs(row - col) == Math.Abs(board[row] - board[col])) {
                    return false;
                }
            }
            return true;
        }

        static void queen(int col) {
            if(col == boardSize) {
                result++;
                return;
            }

            for(int row = 0; row < boardSize; row++) {
                board[col] = row;

                if(check(col)) {
                    queen(col + 1);
                }
            }
        }

    }
}
