using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int subj = int.Parse(Console.ReadLine());
            string[] input = Console.ReadLine().Split();

            int max = 0;

            for(int i=0; i<subj; i++) {
                if(max < int.Parse(input[i])) {
                    max = int.Parse(input[i]);
                }
            }

            float sum = 0;
            for(int i=0; i<subj; i++) {
                sum += float.Parse(input[i]) / max * 100;
            }

            Console.WriteLine(sum / subj);
        }

        
    }
}
