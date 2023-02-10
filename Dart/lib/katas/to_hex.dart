// Codewars

/*===================================================================================================
Write a function that takes in a string of one or more words, and returns the same string, but with 
all five or more letter words reversed (Just like the name of this Kata). Strings passed in will 
consist of only letters and spaces. Spaces will be included only when more than one word is present.
===================================================================================================*/

String to_hex(int r, int g, int b) {
  r = (r < 0) ? 00 : r;
  g = (g < 0) ? 00 : g;
  b = (b < 0) ? 00 : b;

  r = (r > 255) ? 255 : r;
  g = (g > 255) ? 255 : g;
  b = (b > 255) ? 255 : b;

  return (r.toRadixString(16).padLeft(2, '0') +
          g.toRadixString(16).padLeft(2, '0') +
          b.toRadixString(16).padLeft(2, '0'))
      .toUpperCase();
}

/*
    Notes:
      OOOOOOOOOO. Looking at the other solutions, e.clamp(0, 255) would have been
      neat to use. I could have created an array, mapped, clamped, to int, toRadixString,
      padded, joined, uppered, returned. It also would have been more DRY.
    
*/