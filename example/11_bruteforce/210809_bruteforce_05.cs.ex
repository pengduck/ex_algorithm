using System;

namespace exAlgorithm
{
    class Program
    {
        
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            string num = "666";
            int end = 665;
            int cnt = 0;

            while(true) {
                end++;

                if(end.ToString().Contains(num)) {
                    cnt++;
                };

                if(cnt == input) break;
            }

            Console.WriteLine(end);
        }

        // static bool chk() {
        //     return false;
        // }
    }
}
