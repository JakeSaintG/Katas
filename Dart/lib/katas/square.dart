// Codewars

/*=================================================================
    Complete the square sum function so that it squares 
    each number passed into it and then sums the results together.
==================================================================*/

import 'dart:math';

int squareSum(List numbers) => numbers.fold(0, (a, b) => a.toInt() + pow(b, 2).toInt());

/*
    Notes:

    Learned from that C# Kata! Instead of mapping to square all the numbers, it looks like
    reduce and take care of that for me. Readability is questionable.
*/