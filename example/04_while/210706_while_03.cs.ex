using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = int.Parse(Console.ReadLine());
            int temp = i;
            int count = 1;
            while(true) {
                i = ((i%10)*10) + (((i/10) + (i%10)) % 10);
                if(temp == i) break;
                else count++;
            }
            
            Console.WriteLine(count);
        }
    }
}
