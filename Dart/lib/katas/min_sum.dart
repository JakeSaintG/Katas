// Codewars

/*=================================================================
    Given an array of integers, Find the minimum sum which is 
    obtained from summing each Two integers product:
        Array/list will contain positives only
        Array/list will always have even size
==================================================================*/

int minSum(arr) {
  int sum = 0;

  arr.sort();

  var smaller = arr.reversed.toList().sublist(arr.length ~/ 2);
  var larger = arr.sublist(arr.length ~/ 2).reversed.toList();

  smaller.sort();

  for (int i = 0; i < smaller.length; i++) {
    sum += (smaller[i] * larger[i]) as int;
  }

  return sum;
}

/*
    Notes:

*/