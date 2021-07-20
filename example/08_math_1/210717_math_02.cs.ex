using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());

            int count = 1;
            int num = 1;
            while (input > num) {
                num += 6 * count;
                count++;
            }

            Console.WriteLine(count);
        }
    }
}
