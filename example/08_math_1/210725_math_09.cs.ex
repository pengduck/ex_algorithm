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
                string[] coord = Console.ReadLine().Split();
                int distance = int.Parse(coord[1]) - int.Parse(coord[0]);

                int result = 0;
                int cnt = 1;
                while(distance > 0) {
                    if(distance <= cnt) {
                        result += 1;
                    } else {
                        result += 2;
                    }
                    distance -= cnt * 2;
                    cnt++;
                }

                sb.AppendLine(result.ToString());
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
