using System;

namespace exAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            int count = 0;
            for(int i=0; i<input.Length; i++) {
                if(input.Length > i+2) {
                    if(input[i] == 'd' && input[i+1] == 'z' && input[i+2] == '=') {
                        count++;
                        i = i + 2;
                    } else if(check(input[i], input[i+1])) {
                        count++;
                        i++;
                    } else {
                        if(input[i] >= 'a' && input[i] <= 'z') {
                            count++;
                        }
                    }
                } else if(input.Length > i+1) {
                    if(check(input[i], input[i+1])) {
                        count++;
                        i++;
                    } else {
                        if(input[i] >= 'a' && input[i] <= 'z') {
                            count++;
                        }
                    }
                } else {
                    if(input[i] >= 'a' && input[i] <= 'z') {
                        count++;
                    }
                }
            }

            Console.WriteLine(count);
        }

        static bool check(char c, char d) {
            if(c == 'd' && d == '-') {
                return true;
            } else if(c == 'c') {
                if(d == '=' || d == '-') {
                    return true;
                }
            } else if(c == 'l' && d == 'j') {
                return true;
            } else if(c == 'n' && d == 'j') {
                return true;
            } else if(c == 's' && d == '=') {
                return true;
            } else if(c == 'z' && d == '=') {
                return true;
            }
            return false;
            
        }


    }
}
