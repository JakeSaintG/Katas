// Codewars

/*=================================================================
    Complete the square sum function so that it squares 
    each number passed into it and then sums the results together.
==================================================================*/

import 'dart:math';

int mul_of_3_or5(int n) {
  int sum = 0;

  for (var i = 0; i < n; i++) {
    if (i % 5 == 0 || i % 3 == 0) sum += i;
  }

  return sum;
}

/*
    Notes:

*/