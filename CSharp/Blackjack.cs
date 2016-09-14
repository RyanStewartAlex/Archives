using System;

namespace Blackjack
{
    class Blackjack
    {
        static int total = 0, count = 1, dealer = 0;
        static Random shuffle = new Random();
        static void Main(string[] args)
        {
            Console.Title = "Blackjack";
            Console.WriteLine("Please enter your name");
            string n = Console.ReadLine();
            Console.Title = n + " - Blackjack";
            Start();
        }
        static void Start()
        {
            Console.Clear();
            total = 0;
            dealer = shuffle.Next(15, 22);
            count = 1;
            string dealt = Deal();
            Console.WriteLine("You were dealt a " + dealt + ". Total: " + total);
            RunGame();
        }
        static void RunGame()
        {
            Console.WriteLine("Would you like to hit (H) or stay (S)?");
            string reply = Console.ReadLine();
            switch(reply.ToUpper())
            {
                case "H": Console.Clear(); Console.WriteLine("Hit"); Hit();
                    break;
                case "S": Console.Clear(); Console.WriteLine("Stay"); Stay();
                    break;
                default: Console.Clear(); Console.WriteLine("Stay"); Stay();
                    break;
            }
        }

        static string Deal()
        {
            string card;
            int value = shuffle.Next(2,14);
            switch(value)
            {
                case 2: card = "Two"; total += 2;
                    break;
                case 3: card = "Three"; total += 3;
                    break;
                case 4: card = "Four"; total += 4;
                    break;
                case 5: card = "Five"; total += 5;
                    break;
                case 6: card = "Six"; total += 6;
                    break;
                case 7: card = "Seven"; total += 7;
                    break;
                case 8: card = "Eight"; total += 8;
                    break;
                case 9: card = "Nine"; total += 9;
                    break;
                case 10: card = "Ten"; total += 10;
                    break;
                case 11: card = "Jack"; total += 10;
                    break;
                case 12: card = "Queen"; total += 10;
                    break;
                case 13: card = "King"; total += 10;
                    break;
                case 14: card = "Axe"; total += 11;
                    break;
                default: card = "Two"; total += 2;
                    break;
            }
            return card;
        }
        static void GameOver()
        {
            Console.WriteLine("Play again? (Y/N)");
            string reply = Console.ReadLine();
            switch(reply.ToUpper())
            {
                case "Y": Start();
                    break;
                case "N": Console.Clear(); Console.WriteLine("Thanks for playing!"); System.Threading.Thread.Sleep(1500); Environment.Exit(0);
                    break;
                default: Console.Clear(); Console.WriteLine("Thanks for playing!"); System.Threading.Thread.Sleep(1500); Environment.Exit(0);
                    break;
            }
        }
        static void Stay()
        {
            if (total > dealer)
            {
                Console.WriteLine("You win! Total: " + total + ". Dealer: " + dealer);
            }
            else if (total < dealer)
            {
                Console.WriteLine("You lose! Total: " + total + ". Dealer: " + dealer);
            }
            else if (total == dealer)
            {
                Console.WriteLine("It's a tie! Total : " + total + ". Dealer: " + dealer);
            }
            GameOver();
        }
        static void Hit()
        {
            count += 1;
            string dealt = Deal();
            if (total == 21)
            {
                Console.WriteLine("You were dealt a " + dealt + ". Total: " + total + ". Dealer: " + dealer + ". You win!");
                GameOver();
            }
            else if (total > 21)
            {
                Console.WriteLine("You were dealt a " + dealt + ". Bust! Total: " + total + ". Dealer: " + dealer);
                GameOver();
            }
            else if (total < 21)
            {
                if (count >= 5)
                {
                    Console.WriteLine("You were dealt a " + dealt + ". Total: " + total + ".");
                    Console.WriteLine("You have 5 cards, you win! Total: " + total + ". Dealer: " + dealer);
                    GameOver();
                }
                else
	            {
                    Console.WriteLine("You were dealt a " + dealt + ". Total: " + total);
                }
            }
            RunGame();
        }
    }
}
