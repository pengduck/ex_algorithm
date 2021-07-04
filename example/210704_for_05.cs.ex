using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int T = int.Parse(Console.ReadLine());

            StringBuilder test = new StringBuilder();

            for (int i=1; i<=T; i++) {
                test.Append(i);
                test.Append(Environment.NewLine);
            }

            Console.WriteLine(test.ToString());
        }
    }
}
