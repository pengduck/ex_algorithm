using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            
            string num = Console.ReadLine();
            int result = 0;
            for(int i=0; i<input; i++) {
                result += num[i] - '0';
            }
            Console.WriteLine(result);
        }
    }
}

