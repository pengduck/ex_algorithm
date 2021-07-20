using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();

            int up = int.Parse(input[0]);
            int down = int.Parse(input[1]);
            int height = int.Parse(input[2]);

            int count = (height - up) / (up - down) + ((height-up) % (up - down) == 0 ? 1 : 2);

            Console.WriteLine(count);

        }
    }
}
