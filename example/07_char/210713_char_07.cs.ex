using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();
            int[] compare = new int[2];

            for (int j=0; j<2; j++) {
                for (int i=input[j].Length-1; i>=0; i--) {
                    compare[j] += (input[j][i] - '0') * (int) Math.Pow(10, i);
                }
            }

            if(compare[0] > compare[1]) Console.WriteLine(compare[0]);
            else Console.WriteLine(compare[1]);

        }
    }
}
