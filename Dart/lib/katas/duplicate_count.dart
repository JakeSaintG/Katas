// Codewars

/*=========================================================================================
Write a function that will return the count of distinct case-insensitive alphabetic characters 
and numeric digits that occur more than once in the input string. The input string can be 
assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
=========================================================================================*/

int duplicate_count(String text) {
  var c = text.toLowerCase().split('');

  return c
      .map(((e) => {c.where((i) => e == i)}.elementAt(0)))
      .where((e) => e.length > 1)
      .expand((i) => i)
      .toSet()
      .toList()
      .length;
}

/*
  Notes:

    I don't like my use of .toSet().toList() to make a list of distinct characters...but it works.
*/