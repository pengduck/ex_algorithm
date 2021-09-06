using System;
using System.IO;

namespace exAlgorithm
{
    class Program
    {
        static int[] chosen;
        static int count;
        static int toChoose;
        
        static StreamWriter output = new System.IO.StreamWriter(Console.OpenStandardOutput());

        static void Main(string[] args)
        {

            int[] input = Array.ConvertAll(Console.ReadLine().Split(), int.Parse);

            count = input[0];
            toChoose = input[1];
            chosen = new int[toChoose];
            choose(0);

            output.Close();
        }

        static void choose(int num) {
            if(num == toChoose) {
                for(int i=0; i<toChoose; i++) {
                    output.Write(chosen[i] + " ");
                }
                output.WriteLine();
                return;
            }

            for(int i=1; i<=count; i++) {
                chosen[num] = i;
                choose(num+1);
            }
        }
    }
}
