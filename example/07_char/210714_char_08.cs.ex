using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine().ToUpper();

            int result = 0;
            foreach(var c in input) {
                result += seconds(c);
            }
            Console.WriteLine(result);
        }

        static int seconds(char c) {
            int s = 2;
            if(c >= 'A') s++;
            if(c >= 'D') s++;
            if(c >= 'G') s++;
            if(c >= 'J') s++;
            if(c >= 'M') s++;
            if(c >= 'P') s++;
            if(c >= 'T') s++;
            if(c >= 'W') s++;
            if(c > 'Z') s++;

            return s;
        }
    }
}
