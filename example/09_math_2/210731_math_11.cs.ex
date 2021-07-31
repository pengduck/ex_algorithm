using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            StringBuilder sb = new StringBuilder();
            for(int i=0; i<input; i++) {
                string[] turrets = Console.ReadLine().Split();

                int x1 = int.Parse(turrets[0]);
                int y1 = int.Parse(turrets[1]);
                int r1 = int.Parse(turrets[2]);
                int x2 = int.Parse(turrets[3]);
                int y2 = int.Parse(turrets[4]);
                int r2 = int.Parse(turrets[5]);

                double distance = Math.Sqrt(Math.Pow(x2-x1,2) + Math.Pow(y2-y1,2));
                if(distance > r1 + r2 || distance < Math.Abs(r1 - r2)) sb.AppendLine(0.ToString());
                else if(distance < r1 + r2 && distance > Math.Abs(r1 - r2)) sb.AppendLine(2.ToString());
                else if(distance == 0 && r1 == r2) sb.AppendLine((-1).ToString());
                else sb.AppendLine(1.ToString());
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
