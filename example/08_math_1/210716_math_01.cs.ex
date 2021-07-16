using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();

            int fixedCost = int.Parse(input[0]);
            int variable = int.Parse(input[1]);
            int price = int.Parse(input[2]);

            int sales = 1;
            if(variable >= price) {
                sales = -1;
            } else {
                sales = fixedCost / (price - variable);
                sales++;
            }
            Console.WriteLine(sales);
        }
    }
}
