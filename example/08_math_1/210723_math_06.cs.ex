using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int t = int.Parse(Console.ReadLine());

            int k = 0;
            StringBuilder sb = new StringBuilder();
            int prev = 1;
            for(int a=1; a<=t; a++) {
                k = int.Parse(Console.ReadLine());
                int[] resident = new int[int.Parse(Console.ReadLine())];
                for(int i=0; i<resident.Length; i++) {
                    resident[i] = i+1;
                }

                for(int b=1; b<=k; b++) {
                    for(int c=1; c<resident.Length; c++) {
                        resident[c] = resident[c] + prev;
                        prev = resident[c];
                    }
                    prev = 1;
                }
                sb.Append(resident[resident.Length-1] + Environment.NewLine);
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
