using System;

namespace exAlgorithm
{
    class Program
    {
        
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            int[] numbers = new int[10001];
            Array.Clear(numbers, 0, numbers.Length);
            for(int i=0; i<input; i++) {
                numbers[int.Parse(Console.ReadLine())]++;
            }

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());
            for(int i=0; i<numbers.Length; i++) {
                for(int j=0; j<numbers[i]; j++) {
                    output.WriteLine(i);
                }
            }

            output.Close();
        }

    }
}
