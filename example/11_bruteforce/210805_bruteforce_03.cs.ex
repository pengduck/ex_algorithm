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

            int[] weight = new int[input];
            int[] height = new int[input];

            for(int i=0; i<input; i++) {
                string info = Console.ReadLine();
                weight[i] = int.Parse(info.Split()[0]);
                height[i] = int.Parse(info.Split()[1]);
            }

            int rank = 1;
            for(int j=0; j<input; j++) {
                for(int k=0; k<input; k++) {
                    if(j != k) {
                        if(weight[j] < weight[k] && height[j] < height[k]) {
                            rank++;
                        }
                    }
                }
                sb.Append(rank.ToString() + " ");
                rank = 1;
            }
            Console.WriteLine(sb.ToString());
        }


    }
}
