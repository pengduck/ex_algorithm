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

            List<int> origin = Console.ReadLine().Split().Select(x => Int32.Parse(x)).ToList();
            List<int> sorting = new List<int>(origin).Distinct().ToList();
            sorting.Sort();

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());

            for(int i=0; i<cnt; i++) {
                output.Write(sorting.BinarySearch(origin[i]) + " ");
            }

            output.Close();
        }
    }
}
