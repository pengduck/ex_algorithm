using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            string[] numList = new string[input];
            numList = Console.ReadLine().Split();

            int count = 0;
            
            for(int i=0; i<input; i++) {
                int num = int.Parse(numList[i]);
                int div = 0;
                for(int j=1; j<=num; j++) {
                    if(num % j == 0) div++;
                }
                if(div == 2) count++;
            }

            Console.WriteLine(count);
        }
    }
}
