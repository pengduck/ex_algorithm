using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int t = int.Parse(Console.ReadLine());

            int one = 0;
            int hund = 0;
            StringBuilder sb = new StringBuilder();
            for(int i=0; i<t; i++) {
                string[] a = Console.ReadLine().Split();

                int h = int.Parse(a[0]);
                int w = int.Parse(a[1]);
                int n = int.Parse(a[2]);

                one = (n - 1) / h + 1;
                if(n % h == 0) {
                    hund = h * 100;
                } else {
                    hund = n % h * 100;
                }

                sb.Append(hund + one + Environment.NewLine);
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
