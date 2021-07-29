using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static bool[] notPrimes;
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();

            int fir = int.Parse(input[0]);
            int sec = int.Parse(input[1]);

            notPrimes = new bool[sec+1];
            getNotPrime();
            StringBuilder sb = new StringBuilder();
            for (int i = fir; i <= sec; i++) {
                if (!notPrimes[i]) sb.Append(i.ToString() + Environment.NewLine);
            }

            Console.WriteLine(sb.ToString());
        }

        static void getNotPrime() {
            notPrimes[1] = true;
            for (int i=2; i<notPrimes.Length; i++) {
                for (int j=2; j*i<notPrimes.Length; j++) {
                    notPrimes[j*i] = true;
                }
            }
        }
    }
}
