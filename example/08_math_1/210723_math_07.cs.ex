using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());

            Console.WriteLine(count(n));
        }

        static int count(int n) {
            if(n < 3) return -1;
            int shareFive = n / 5;

            while (shareFive >=0) {
                int left = n - (shareFive * 5);
                if(left % 3 == 0) {
                    return shareFive + (left / 3);
                }
                shareFive--;
            }

            return -1;
        }
    }
}
