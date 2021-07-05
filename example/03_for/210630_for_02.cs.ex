using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
                string input = Console.ReadLine();
                int a = int.Parse(input);
                int[] resultArray = new int[a];
                for (int b=0; b<a; b++) {
                    string numbers = Console.ReadLine();
                    string[] numArray = numbers.Split(' ');
                    resultArray[b] = int.Parse(numArray[0]) + int.Parse(numArray[1]);
                }

                for (int b=0; b<a; b++) {
                    Console.WriteLine(resultArray[b]);
                }
        }
    }
}
