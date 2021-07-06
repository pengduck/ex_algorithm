using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = int.Parse(Console.ReadLine());
            string[] array = new string[i];
            array = Console.ReadLine().Split();

            StringBuilder result = new StringBuilder();
            int min = 1000000;
            int max = -1000000;

            foreach (var item in array)
            {
                int t = int.Parse(item);
                if(t > max) max = t;
                if(t < min) min = t;
            }

            result.Append(min + " " + max);

            Console.WriteLine(result.ToString());
        }
    }
}
