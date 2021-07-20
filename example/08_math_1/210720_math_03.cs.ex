using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());

            bool b = true;
            StringBuilder sb = new StringBuilder();
            int numerator = 0;
            int denominator = 1;
            for(int i=1; i<=input; i++) {
                if(b) {
                    numerator++;
                    if(denominator == 1) {
                        b = !b;
                    } else {
                        denominator--;
                    }
                } else {
                    denominator++;
                    if(numerator == 1) {
                        b = !b;
                    } else {
                        numerator--;
                    }
                }
            }

            sb.Append(numerator + "/" + denominator);
            Console.WriteLine(sb.ToString());
        }
    }
}
