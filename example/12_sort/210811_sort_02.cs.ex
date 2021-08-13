using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            int[] numbers = new int[input];
            for(int i=0; i<input; i++) {
                numbers[i] = int.Parse(Console.ReadLine());
            }

            Array.Sort(numbers);

            StringBuilder sb = new StringBuilder();

            for(int i=0; i<input; i++) {
                sb.AppendLine(numbers[i].ToString());
            }

            Console.WriteLine(sb.ToString());
        }

    }
}
