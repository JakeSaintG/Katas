//Codewars

/*===============================================================================================================
    Given n, take the sum of the digits of n.
    If that value has more than one digit, continue reducing in this way until a single-digit number is produced.
    The input will be a non-negative integer.
===============================================================================================================*/

namespace Katas.KataClasses;

public static class DigitalRoot
{
    public static int ReturnDigitalRoot(long n)
    {
        var num = n.ToString().ToCharArray().Select(e => Int32.Parse(e.ToString())).Aggregate((a, b) => a + b);

        if (num.ToString().Length > 1)
            return ReturnDigitalRoot(num);

        return num;
    }
}

/*
    Notes:

    I forgot about .Sum() which would have have worked just as well as Aggregate. It would have also
    been more readable/self-documenting for someone else.
 */