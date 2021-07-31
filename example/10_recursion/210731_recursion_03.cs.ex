using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static char[,] array;
        static void Main(string[] args)
        {
            int input = int.Parse(Console.ReadLine());
            array = new char[input, input];
            for(int i=0; i<input; i++) {
                for(int j=0; j<input; j++) {
                    array[j, i] = ' ';
                }
            }

            star(0, 0, input);

            StringBuilder sb = new StringBuilder();
            for(int i=0; i<input; i++) {
                for(int j=0; j<input; j++) {
                    sb.Append(array[j,i].ToString());
                }
                sb.Append(Environment.NewLine);
            }

            Console.Write(sb.ToString());
        }

        static void star(int j, int i, int end) {
            if(end == 1) {
                array[j, i] = '*';
                return;
            }

            int div = end / 3;
            for(int a=0; a<3; a++) {
                for(int b=0; b<3; b++) {
                    if(a == 1 && b == 1) {
                        continue;
                    } else {
                        star(j+b*div, i+a*div, div);
                    }
                }
            }

            return;
        }
    }
}
