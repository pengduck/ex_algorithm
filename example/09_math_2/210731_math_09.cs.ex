using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = "";
            string right = "right";
            string wrong = "wrong";
            while((input = Console.ReadLine()) != "0 0 0") {
                string[] array = input.Split();

                int a = int.Parse(array[0]);
                int b = int.Parse(array[1]);
                int c = int.Parse(array[2]);

                Console.WriteLine(a*a + b*b == c*c || a*a + c*c == b*b || c*c + b*b == a*a ? right: wrong);
            }
        }
    }
}
