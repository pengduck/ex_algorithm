using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int count = int.Parse(Console.ReadLine());

            int point = 0;
            int sum = 0;
            for(int i=0; i<count; i++) {
                string str = Console.ReadLine();
                for(int j=0; j<str.Length; j++) {
                    if(str[j] == 'O') {
                        point++;
                        sum += point;
                    } else {
                        point = 0;
                    }
                }
                Console.WriteLine(sum);
                sum = 0;
                point = 0;
            }
        }
    }
}
