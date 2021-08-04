using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            int cnt = int.Parse(input.Split(" ")[0]);
            int target = int.Parse(input.Split(" ")[1]);

            string[] inputs = Console.ReadLine().Split();
            int[] cards = Array.ConvertAll(inputs, int.Parse);

            int sum = 0;

            for(int first = 0; first < cards.Length - 2; first++) {
                for(int second = 0; second < cards.Length - 1; second++) {
                    if(second == first) continue;
                    for(int third = 0; third < cards.Length; third++) {
                        if(third == first || third == second) continue;
                        int temp = cards[first] + cards[second] + cards[third];
                        if(temp > sum) {
                            if(temp <= target) sum = temp;
                        }
                    }
                }
            }

            Console.WriteLine(sum);
        }

    }
}
