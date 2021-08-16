using System;
using System.Linq;
using System.Collections.Generic;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int cnt = int.Parse(Console.ReadLine());
            List<string> wordList = new List<string>();
            for(int i=0; i<cnt; i++) {
                wordList.Add(Console.ReadLine());
            }

            var sortedList = wordList.Distinct().OrderBy(x => x.Length).ThenBy(x => x);

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());
            foreach(string word in sortedList) {
                output.WriteLine(word);
            }

            output.Close();
        }
    }
}
