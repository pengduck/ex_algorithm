using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());

            Console.WriteLine(factorial(input));
        }

        static int factorial(int i) {
            if(i < 2) return 1;
            return i * factorial(i-1);
        }
    }
}
