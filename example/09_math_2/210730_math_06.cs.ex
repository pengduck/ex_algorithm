using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static int max = 10000;
        static void Main(string[] args)
        {

            bool[] notPrimes = new bool[max + 1];

            notPrimes[1] = true;
            int end = (int) Math.Sqrt(max);
            for(int i=2; i<=end; i++) {
                if(notPrimes[i]) continue;
                for(int j=2; j*i<=max; j++) {
                    notPrimes[i * j] = true;
                }
            }

            StringBuilder sb = new StringBuilder();
            int count = int.Parse(Console.ReadLine());
            for(int c=0; c<count; c++) {
                int input = int.Parse(Console.ReadLine());
                for(int i=input/2; i<=input; i++) {
                    if(notPrimes[i] == false && notPrimes[input-i] == false) {
                        sb.Append((input-i) + " " + i + Environment.NewLine);
                        break;
                    }
                }
            }


            Console.WriteLine(sb.ToString());

        }

    }
}
