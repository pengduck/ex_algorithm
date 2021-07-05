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

            string[] input = new string[2];
            for (int i=1; i<=T; i++) {
                input = Console.ReadLine().Split(' ');
                result.Append("Case #");
                result.Append(i);
                result.Append(": ");
                result.Append(int.Parse(input[0]) + int.Parse(input[1]));
                result.Append(Environment.NewLine);
            }

            Console.WriteLine(result.ToString());
        }
    }
}
