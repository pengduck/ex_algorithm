using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine().ToUpper();
            int[] count = new int[26];
            int max = 0;
            char mostUsed = 'A';

            for(char c='A'; c<='Z'; c++) {
                for (int i=0; i<input.Length; i++) {
                    if(input[i] == c) count[c-65]++;
                }
                if(count[c-65] > max) {
                    max = count[c-65];
                    mostUsed = c;
                };
            }

            bool condition1 = false;
            bool condition2 = false;
            for(int i=0; i<26; i++) {
                if(condition1 == true && count[i] == max) {
                    condition2 = true;
                } else if(count[i] == max) {
                    condition1 = true;
                }
            }

            if(condition2) {
                Console.WriteLine("?");
            } else {
                Console.WriteLine(mostUsed.ToString());
            }

        }
    }
}
