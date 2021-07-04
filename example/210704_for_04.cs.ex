using System;
using System.Text;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {

//             입력
// 첫 줄에 테스트케이스의 개수 T가 주어진다. T는 최대 1,000,000이다. 다음 T줄에는 각각 두 정수 A와 B가 주어진다. A와 B는 1 이상, 1,000 이하이다.

// 출력
// 각 테스트케이스마다 A+B를 한 줄에 하나씩 순서대로 출력한다.
                int T = 0;

                T = int.Parse(Console.ReadLine());

                StringBuilder test = new StringBuilder();

                string[] numArray = new string[2];

                for (int b=0; b<T; b++) {
                    numArray = Console.ReadLine().Split(' ');

                    test.Append(int.Parse(numArray[0]) + int.Parse(numArray[1]) + "\n");
                }

                Console.WriteLine(test);
        }
    }
}
