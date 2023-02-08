// Codewars

/*===================================================================================================
Write a function that takes in a string of one or more words, and returns the same string, but with 
all five or more letter words reversed (Just like the name of this Kata). Strings passed in will 
consist of only letters and spaces. Spaces will be included only when more than one word is present.
===================================================================================================*/

namespace Katas.KataClasses;

public class SpinWords
{
    public static string Spin(string sentence)
    {
        return string.Join(" ", sentence.Split(' ').ToList<string>().Select(x =>
        {
            if (x.Length > 4)
            {
                char[] charArray = x.ToCharArray();
                Array.Reverse(charArray);
                return new string(charArray);
            }
            return x;
        }));
    }
}
/*
    Notes:

    Ternary ifs are nice but can make it hard to read...although, that's not really the point of Code Wars:
        return String.Join(" ", sentence.Split(' ').Select(str => str.Length >= 5 ? new string(str.Reverse().ToArray()) : str));
 */