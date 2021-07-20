using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgrammingAssignment3
{
    // IMPORTANT: Only add code in the section
    // indicated below. The code I've provided
    // makes your solution work with the 
    // automated grader on Coursera

    /// <summary>
    /// Programming Assignment 3
    /// </summary>
    class Program
    {
        // number to classify
        static int number;

        /// <summary>
        /// Classifies numbers as even or odd and negative, 0, or positive
        /// </summary>
        /// <param name="args">command-line args</param>
        static void Main(string[] args)
        {
            // loop while there's more input
            string input = Console.ReadLine();
            while (input[0] != 'q')
            {
                // extract number from string
                GetInputValueFromString(input);

                // Add your code between this comment
                // and the comment below. You can of
                // course add more space between the
                // comments as needed
                StringBuilder sb = new StringBuilder();
                switch(number%2) {
                    case 0: {
                        sb.Append("e ");
                    } break;
                    default: {
                        sb.Append("o ");
                    } break;
                }

                if(number > 0) {
                    sb.Append("1");
                } else if (number < 0) {
                    sb.Append("-1");
                } else {
                    sb.Append("0");
                }
 
                Console.WriteLine(sb.ToString());

                // Don't add or modify any code below
                // this comment
                input = Console.ReadLine();

            }
        }

        /// <summary>
        /// Extracts the number from the given input string
        /// </summary>
        /// <param name="input">input string</param>
        static void GetInputValueFromString(string input)
        {
            number = int.Parse(input);
        }
    }
}
