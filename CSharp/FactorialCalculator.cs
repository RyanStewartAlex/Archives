using System;

namespace Calculator
{
    class Calculator
    {
        static double checkInput()
        {
            double input;
            Console.WriteLine("Please enter integer and press enter");
            try
            {
                input = Int64.Parse(Console.ReadLine());
                return input;
            }
            catch (FormatException)
            {
                Console.Clear();
                Console.WriteLine("Value entered is not compatable\n");
                return checkInput();
            }
            catch (OverflowException)
            {
                Console.Clear();
                Console.WriteLine("Value entered is too large/small\n");
                return checkInput();
            }
        }
        static void Main(string[] args)
        {
            while (true)
            {
                double value;
                double total;
                Console.Title = "Factorial Calculator";
                value = checkInput();
                total = value;
                if (value > -1)
                {
                    for (int i = Convert.ToInt32(value) - 1; i > 0; i--)
                    {
                        total = total * i;
                    }
                }
                else
                {
                    for (int i = Convert.ToInt32(value) + 1; i < 0; i++)
                    {
                        total = total * i;
                    }
                }
                Console.Clear();
                Console.WriteLine(value + "!=" + total + "\n");
            }
        }
    }
}
