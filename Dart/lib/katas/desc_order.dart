// Codewars

/*==========================================================================
    Your task is to make a function that can take any non-negative integer 
    as an argument and return it with its digits in descending order. 
    Essentially, rearrange the digits to create the highest possible number.
==========================================================================*/

int descendingOrder(n) {
  var t = n.toString().split('');
  t.sort();

  return int.parse(t.reversed.join());
}


/*
    Notes:

    I forgot about .Sum() which would have have worked just as well as Aggregate. It would have also
    been more readable/self-documenting for someone else.
 */
