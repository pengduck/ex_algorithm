using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Trim().Split(" ");

            if(string.IsNullOrEmpty(input[0])) Console.WriteLine(0); 
            else Console.WriteLine(input.Length);
        }
    }
}
