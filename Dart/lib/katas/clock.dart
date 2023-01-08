// Codewars

/*=========================================================================================
    Clock shows h hours, m minutes and s seconds after midnight
    Your task is to write a function which returns the time since midnight in milliseconds.
=========================================================================================*/

int past(int h, int m, int s) {
  return DateTime.parse('1993-01-27 00:00:00Z')
          .add(Duration(hours: h))
          .add(Duration(minutes: m))
          .add(Duration(seconds: s))
          .millisecondsSinceEpoch -
      DateTime.parse('1993-01-27 00:00:00Z').millisecondsSinceEpoch;
}

/*
  Notes:

  I should have used Duration:

  int past(int h, int m, int s) {
    return new Duration(hours: h, minutes: m, seconds: s).inMilliseconds;
  }
*/