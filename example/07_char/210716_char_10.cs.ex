using System;
using System.Collections.Generic;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());

            int count = 0;
            for(int i=0; i<input; i++) {
                string word = Console.ReadLine();
                if(isGroup(word)) count++; 
            }
            Console.WriteLine(count);
        }

        static bool isGroup(string s) {
            List<char> charList = new List<char>();
            char prevChar = '0';
            if(s.Length > 0) {
                for(int j=0; j<s.Length; j++) {
                    if(prevChar != s[j]) {
                        if(charList.Contains(s[j])) return false;
                        else charList.Add(s[j]);
                        prevChar = s[j];
                    }
                }
                return true;
            } else return false;

        }
    }
}
