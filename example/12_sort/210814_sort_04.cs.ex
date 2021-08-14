using System;
using System.Linq;

namespace exAlgorithm
{
    class Program
    {
        
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            int[] numbers = new int[input];
            for(int i=0; i<input; i++) {
                numbers[i] = int.Parse(Console.ReadLine());
            }

            Array.Sort(numbers);

            int mode = 0;
            int modeCount = 0;
            bool isFirst = false;

            foreach(var num in numbers.GroupBy(x=>x)) {
                if(modeCount > num.Count()) continue;
                else if(modeCount == num.Count()) {
                    if(isFirst) {
                        mode = num.Key;
                        isFirst = false;
                    } else continue;
                } else {
                    mode = num.Key;
                    modeCount = num.Count();
                    isFirst = true;
                }
            }

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());
            output.WriteLine(Math.Round((double) numbers.Sum() / input));
            output.WriteLine(numbers[(input-1)/2]);
            output.WriteLine(mode);
            output.WriteLine(numbers[input-1] - numbers[0]);

            output.Close();
        }
    }
}
