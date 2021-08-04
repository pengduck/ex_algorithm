using System;

namespace exAlgorithm
{
    class Program
    {
        static int[] array = {0,1,2,3,4,5,6,7,8,9};

        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            int result = 1000001;
            bool trigger = false;

            for(int i=0; i<input; i++) {
                if(i + sumDigit(i) == input) {
                    if(i < result) {
                        result = i;
                        trigger = true;
                    }
                }
            }

            Console.WriteLine(trigger ? result : 0);
        }

        static int sumDigit(int num) {
            int sum = 0;
            while (num > 0) {
                sum += num % 10;
                num /= 10;
            }
            return sum;
        }


    }
}
