using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] input = new int[3];
            
            for(int i=0; i<3; i++) {
                input[i] = int.Parse(Console.ReadLine());
            }

            string a = (input[0] * input[1] * input[2]).ToString();

            StringBuilder result = new StringBuilder();
            for(int j=0; j<10; j++) {
                int count = 0;
                for(int k=0; k<a.Length; k++) {
                    if(int.Parse(a[k].ToString()) == j) count++;
                }
                result.Append(count + Environment.NewLine);
            }

            Console.WriteLine(result.ToString());
        }
    }
}
