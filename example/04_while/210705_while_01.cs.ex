using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            while(true) {
                string[] input = Console.ReadLine().Split();
                if(input[0] == "0" && input[1] == "0") {
                    break;
                }
                Console.WriteLine(int.Parse(input[0]) + int.Parse(input[1]));
            }
        }
    }
}
