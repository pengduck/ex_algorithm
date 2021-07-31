using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            double r = double.Parse(Console.ReadLine());

            StringBuilder sb = new StringBuilder();
            sb.AppendLine((r * r * Math.PI).ToString());
            sb.AppendLine((r * r * 2).ToString());

            Console.WriteLine(sb.ToString());
        }
    }
}
