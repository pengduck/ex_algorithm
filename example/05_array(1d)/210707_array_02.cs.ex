using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] array = new int[9];

            int count = 0;
            int max = 0;

            for (int i=0; i<9; i++) {
                array[i] = int.Parse(Console.ReadLine());
                if(max < array[i]) {
                    max = array[i];
                    count = i+1;
                }
            }

            StringBuilder result = new StringBuilder();
            result.Append(max + Environment.NewLine + count);

            Console.WriteLine(result.ToString());
        }
    }
}
