using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            while(true) {
                string input = Console.ReadLine();
                if(string.IsNullOrWhiteSpace(input)) {
                    break;
                }
                string[] array = input.Split();
                Console.WriteLine(int.Parse(array[0]) + int.Parse(array[1]));
            }
        }
    }
}
