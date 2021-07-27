using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int num = int.Parse(Console.ReadLine());

            int endNum = (int) Math.Sqrt(num);
            for (int i = 2; i <= endNum; i++) {
                while(num % i == 0) {
                    Console.WriteLine(i);
                    num /= i;
                }
            }

            if(num != 1) {
                Console.WriteLine(num);
            }
        }
    }
}
