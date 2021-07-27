using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int fir = int.Parse(Console.ReadLine());
            int sec = int.Parse(Console.ReadLine());

            StringBuilder sb = new StringBuilder();

            int min = 10001;
            int sum = 0;
            bool hasPrime = false;
            for(int i=fir; i<=sec; i++) {
                if(isPrime(i)) {
                    sum += i;
                    hasPrime = true;
                    if(i < min) min = i;
                }
            }

            if(hasPrime) {
                sb.AppendLine(sum.ToString());
                sb.AppendLine(min.ToString());
            } else {
                sb.AppendLine("-1");
            }

            Console.WriteLine(sb.ToString());

        }

        static bool isPrime(int num) {
            if(num == 1) return false;
            int endNum = (int) Math.Sqrt(num);
            for(int j=2; j<=endNum; j++) {
                if(num % j == 0) return false;
            }
            return true;
        }

    }
}
