// Codewars

/*===================================================================================================
    Your task is to write a function maskify, which changes all but the last four characters into '#'.
===================================================================================================*/

namespace Katas.KataClasses;

public class CardMask
{
    public static string Maskify(string cc)
    {
        char[] ccArray = cc.ToCharArray();
        List<String> maskedList = new List<String> { };

        for (int i = 0; i < ccArray.Length; i++)
        {
            if (i < (ccArray.Length - 4))
                maskedList.Add("#");
            else
                maskedList.Add(ccArray[i].ToString());
        }

        return string.Join("", maskedList);

        // Using Regex.Replace(cc, {REGEX HERE}, "#") would have worked too.
    }
}