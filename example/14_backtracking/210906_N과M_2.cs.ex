using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static bool[] numbers;
        static int[] chosen;
        static int count;
        static int toChoose;

        static StringBuilder sb = new StringBuilder();

        static void Main(string[] args)
        {

            int[] input = Array.ConvertAll(Console.ReadLine().Split(), int.Parse);

            count = input[0];
            numbers = new bool[count];
            toChoose = input[1];
            chosen = new int[toChoose];

            choose(0, 1);
        }

        static void choose(int num, int index) {
            if(num == toChoose) {
                for(int i=0; i<toChoose; i++) {
                    sb.Append(chosen[i] + " ");
                }
                Console.WriteLine(sb.ToString());
                sb.Clear();
                return;
            }

            for(int i=1; i<=count; i++) {
                if(i < index) continue;
                if(!numbers[i-1]) {
                    numbers[i-1] = true;
                    chosen[num] = i;
                    choose(num+1, i);
                    numbers[i-1] = false;
                }
            }
        }
    }
}
