using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static int max = 123456;
        static void Main(string[] args)
        {
            bool[] notPrimes = new bool[max * 2 + 1];

            notPrimes[1] = true;
            int end = (int) Math.Sqrt(max * 2);
            for(int i=2; i<=end; i++) {
                if(notPrimes[i]) continue;
                for(int j=2; j*i<=max*2; j++) {
                    notPrimes[i * j] = true;
                }
            }

            StringBuilder sb = new StringBuilder();
            int input = int.Parse(Console.ReadLine());
            int count = 0;
            while(input != 0) {
                for(int i=input+1; i<=input*2; i++) {
                    if(!notPrimes[i]) count++;
                }
                sb.AppendLine(count.ToString());
                count = 0;
                input = int.Parse(Console.ReadLine());
            }

            Console.WriteLine(sb.ToString());
        }

    }
}
