// Codewars

/*=================================================================
    Complete the square sum function so that it squares 
    each number passed into it and then sums the results together.
==================================================================*/

namespace Katas.KataClasses;

public static class Square
{
    public static int SquareSum(int[] numbers) => numbers.Select(i => i*i).Sum();
}

/*
    Notes:

    I didn't realize that Sum() could map too. Neat:

    public static int SquareSum(int[] n) => n.Sum(i => i * i);
 */