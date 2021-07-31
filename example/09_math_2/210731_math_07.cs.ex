using System;
using System.Linq;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] square = Console.ReadLine().Split(" ");
            int x = int.Parse(square[0]);
            int y = int.Parse(square[1]);
            int distanceX = int.Parse(square[2]) - x;
            int distanceY = int.Parse(square[3]) - y;
            
            int[] distances = {x, y, distanceX, distanceY};

            Console.WriteLine(distances.Min());
        }
    }
}
