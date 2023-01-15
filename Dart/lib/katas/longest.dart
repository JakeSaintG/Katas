// Codewars

/*=========================================================================================
Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, 
the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.
=========================================================================================*/

String longest(String a, String b) {
  var t = a.split("").followedBy(b.split("")).toSet().toList();
  t.sort();
  return t.join("");
}


/*
  Notes:

    I could have added the strings together but the followedBy method looks soooo enticing!

*/