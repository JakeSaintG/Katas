// Codewars

/*===================================================================================================
Write a function that when given a number >= 0, returns an Array of ascending length subarrays.
===================================================================================================*/

List<List<int>> pyramid(int n) {
  List<List<int>> t = [];
  var v = "";

  while (v.length <= n) {
    if (v.length != 0) {
      t.add((v.split('').map((e) => int.parse(e))).toList());
    }
    v = v + '1';
  }

  return t;
}

/*
    Notes:

    WHOA! I need to look into this:
      return List.generate(n, (i) => List.filled(i + 1, 1));
    
*/
