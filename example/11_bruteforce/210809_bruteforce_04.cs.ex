using System;
namespace exAlgorithm
{
    class Program
    {
        
        static void Main(string[] args)
        {
            bool[,] startAtWhite = new bool[8, 8];
            bool[,] startAtBlack = new bool[8, 8];
            for(int i=0; i<8; i++) {
                for(int j=0; j<8; j++) {
                    if((i - j) % 2 == 0) {
                        startAtWhite[i, j] = true;
                        startAtBlack[i, j] = false;
                    } else {
                        startAtWhite[i, j] = false;
                        startAtBlack[i, j] = true;
                    }
                }
            }

            string input = Console.ReadLine();
            int width = int.Parse(input.Split()[1]);
            int height = int.Parse(input.Split()[0]);

            bool[,] board = new bool[height, width];
            for(int i=0; i<height; i++) {
                string line = Console.ReadLine();
                for(int j=0; j<width; j++) {
                    board[i, j] = line[j] == 'W' ? true : false;
                }
            }

            int cnt1 = 0;
            int cnt2 = 0;
            int min = int.MaxValue;
            for(int i=0; i<height-7; i++) {
                for(int j=0; j<width-7; j++) {
                    for(int y=i; y<i+8; y++) {
                        for(int x=j; x<j+8; x++) {
                            if(startAtWhite[y-i, x-j] != board[y, x]) cnt1++;
                            else cnt2++;
                        }
                    }
                    int smaller = cnt1 <= cnt2 ? cnt1 : cnt2;
                    min = smaller < min ? smaller : min;

                    cnt1 = 0; cnt2 = 0;
                }
            }

            Console.WriteLine(min);
        }
    }
}
