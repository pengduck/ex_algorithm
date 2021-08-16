using System;
using System.Collections.Generic;

namespace exAlgorithm
{
    class Program
    {
        public class Coord : IComparable
        {
            public int x;
            public int y;

            public Coord(int x, int y)
            {
                this.x = x;
                this.y = y;
            }

            public int CompareTo(Object obj) {
                Coord c = (Coord)obj;
                if(this.x == c.x) return this.y.CompareTo(c.y);
                else return this.x.CompareTo(c.x);
            }
        }

        static void Main(string[] args)
        {
            int cnt = int.Parse(Console.ReadLine());
            List<Coord> coordList = new List<Coord>();
            for(int i=0; i<cnt; i++) {
                string[] input = Console.ReadLine().Split();
                coordList.Add(new Coord(int.Parse(input[0]), int.Parse(input[1])));
            }

            coordList.Sort();

            var output = new System.IO.StreamWriter(Console.OpenStandardOutput());
            for(int i=0; i<cnt; i++) {
                output.WriteLine(coordList[i].x + " " + coordList[i].y);
            }

            output.Close();
        }
    }
}
