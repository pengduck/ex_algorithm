using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input1 = Console.ReadLine().Split(" ");
            string[] input2 = Console.ReadLine().Split(" ");
            string[] input3 = Console.ReadLine().Split(" ");

            int x = onlyOnce(int.Parse(input1[0]), int.Parse(input2[0]), int.Parse(input3[0]));
            int y = onlyOnce(int.Parse(input1[1]), int.Parse(input2[1]), int.Parse(input3[1]));

            Console.WriteLine(x + " " + y);
        }

        static int onlyOnce(int i, int j, int k) {
            if(i == j) {
                return k;
            } else if (i == k) {
                return j;
            } else {
                return i;
            }
        }
    }
}
