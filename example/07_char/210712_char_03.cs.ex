using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            
            string word = Console.ReadLine();
            StringBuilder sb = new StringBuilder();

            var count = 0;
            for(char i='a'; i<='z'; i++) {
                for(int j=0; j<word.Length; j++) {
                    if(word[j] == i) {
                        sb.Append(count.ToString() + " ");
                        break;
                    } else if(j == word.Length - 1) {
                        sb.Append((-1).ToString() + " ");
                    }
                    count++;
                }
                count = 0;
            }

            Console.WriteLine(sb.ToString());
        }
    }
}
