using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] nums = Console.ReadLine().Split();

            StringBuilder sb = new StringBuilder();

            string first = nums[0];
            string second = nums[1];
            int diff = nums[0].Length - nums[1].Length;

            int upper = 0;

            if(diff < 0) {
                for(int i=second.Length-1; i>=0; i--) {
                    int add = i+diff >= 0 ? first[i+diff] - '0' : 0;
                    int val = (second[i] - '0') + add + upper;

                    if(i == 0) {
                        sb.Insert(0, val);
                    } else {
                        sb.Insert(0, val % 10);

                        if (upper != 0) upper = 0;
                        if (val >= 10) upper++;
                    }
                }
            } else {
                for(int i=first.Length-1; i>=0; i--) {
                    int add = i-diff >= 0 ? second[i-diff] - '0' : 0;
                    int val = (first[i] - '0') + add + upper;

                    if(i == 0) {
                        sb.Insert(0, val);
                    } else {
                        sb.Insert(0, val % 10);

                        if (upper != 0) upper = 0;
                        if (val >= 10) upper++;
                    }
                }
            }

            Console.WriteLine(sb.ToString());


        }
    }
}
