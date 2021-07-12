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
                string[] str = Console.ReadLine().Split();
                foreach(var j in str[1]) {
                    for(int k=0; k<int.Parse(str[0]); k++) {
                        sb.Append(j.ToString());
                    }
                }
                sb.Append(Environment.NewLine);
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
