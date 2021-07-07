using System;
namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            const int inputCount = 10;
            const int div = 42;
            int reminder = 0;
            bool[] check = new bool[div];
            int count = 0;

            for(int i=0; i<inputCount; i++) {
                reminder = int.Parse(Console.ReadLine()) % div;
                check[reminder] = true;
            }
            
            foreach (var item in check) {
                if(item == true) count++;
            }

            Console.WriteLine(count);
        }
    }
}
