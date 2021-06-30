using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
                string input = Console.ReadLine();
                int a = int.Parse(input);
                int result = 0;
                for (int b=1; b<=a; b++) {
                    result += b;
                }

                Console.WriteLine(result);
        }
    }
}
