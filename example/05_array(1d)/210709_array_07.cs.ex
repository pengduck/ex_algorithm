using System;
using System.Text;
namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int count = int.Parse(Console.ReadLine());

            int sum = 0;
            float avg = 0;
            int over = 0;
            
            StringBuilder sb = new StringBuilder();
            for(int i=0; i<count; i++) {
                string[] str = Console.ReadLine().Split();
                for(int j=1; j<str.Length; j++) {
                    sum += int.Parse(str[j]);
                }

                avg = sum / float.Parse(str[0]);

                for(int k=1; k<str.Length; k++) {
                    if(float.Parse(str[k]) > avg) over++;
                }

                sb.AppendLine(String.Format("{0:0.000}", over / float.Parse(str[0]) * 100) + "%");

                sum = 0;
                avg = 0;
                over = 0;
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
