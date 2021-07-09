using System;
using System.Text;
using System.Collections.Generic;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            StringBuilder sb = new StringBuilder();
            List<int> intList = new List<int>();
            for (int i=0; i<10000; i++) {
                intList.Add(i+1);
            }

            for (int j=0; j<10000; j++) {
                intList.Remove(nextNum(j+1));
            }

            foreach(int k in intList) {
                sb.AppendLine(k.ToString());
            }
            Console.WriteLine(sb.ToString());
        }

        static int nextNum(int num) {
            int sum = num;
            while (num > 0) {
                sum += num % 10;
                num /= 10;
            }
            return sum;
        }
    }
}
