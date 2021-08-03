using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static StringBuilder sb = new StringBuilder();
        static int cnt = 0;

        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());

            hanoi(input, 1, 2, 3);
            sb.Insert(0, cnt.ToString() + Environment.NewLine);
            Console.WriteLine(sb.ToString());
        }

        static void hanoi(int i, int from, int via, int to) {
            if(i == 1) {
                sb.AppendLine(from + " " + to);
                cnt++;
            } else {
                hanoi(i-1, from, to, via);
                sb.AppendLine(from + " " + to);
                cnt++;
                hanoi(i-1, via, from, to);
            }
        }
    }
}
