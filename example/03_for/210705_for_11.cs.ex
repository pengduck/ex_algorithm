using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = new string[2];
            input = Console.ReadLine().Split(" ");

            string[] array = new string[int.Parse(input[0])];
            array = Console.ReadLine().Split(" ");

            StringBuilder result = new StringBuilder();

            for (int i=0; i<array.Length; i++) {
                if(int.Parse(array[i]) < int.Parse(input[1])) {
                    result.Append(array[i] + " ");
                }
            }

            Console.WriteLine(result.ToString());
        }
    }
}
