using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            char[] number = new char[input.Length];

            for(int i=0; i<input.Length; i++) {
                number[i] = input[i];
            }

            char temp = ' ';
            for(int i=0; i<number.Length-1; i++) {
                for(int j=i+1; j<number.Length; j++) {
                    if(number[j] > number[i]) {
                        temp = number[i];
                        number[i] = number[j];
                        number[j] = temp;
                    }
                }
            }

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());
            for(int i=0; i<number.Length; i++) {
                output.Write(number[i]);
            }

            output.Close();
        }
    }
}
