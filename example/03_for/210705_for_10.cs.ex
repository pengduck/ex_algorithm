using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int T = int.Parse(Console.ReadLine());

            StringBuilder result = new StringBuilder();

            for (int i=1; i<=T; i++) {
                for (int j=T; j>0; j--) {
                    result.Append(j > i ? " " : "*");
                }
                result.Append(Environment.NewLine);
            }

            Console.WriteLine(result.ToString());
        }
    }
}
