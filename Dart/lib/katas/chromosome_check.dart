// Codewars

/*
Determine if the sex of the offspring will be male or female based on the X or Y chromosome present in the male's sperm.

If the sperm contains the X chromosome, return "Congratulations! You're going to have a daughter."; 
If the sperm contains the Y chromosome, return "Congratulations! You're going to have a son.";
*/

String chromosome_check(String sperm) {
  String sexAssignedAtBirth = "daughter";

  if (sperm.contains('Y')) {
    sexAssignedAtBirth = "son";
  }

  return "Congratulations! You're going to have a $sexAssignedAtBirth.";
}

/*
  Notes:
    I should do a level up Kata for Dart. This kata was extremely simple.

    One-liner
      String chromosome_check(String sperm) => "Congratulations! You're going to have a ${sperm == 'XX' ? 'daughter' : 'son'}.";
*/