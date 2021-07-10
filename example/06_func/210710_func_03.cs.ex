using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());

            Console.WriteLine(HanSu(input));
        }

        static int HanSu(int num) {
            int count = 0;
            for(int i=1; i<=num; i++) {
                if(i >= 100) {
                    int hund = i / 100;
                    int ten = (i / 10) % 10;
                    int one = i % 10;

                    if(hund-ten == ten-one) count++;
                } else count++;
            }

            return count;
        }
    }
}
