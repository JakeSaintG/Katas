import "package:test/test.dart";
import "package:dart/katas/longest.dart";

void main() {
  void testing(String a, String b, String exp) {
    test("longest('$a', '$b')", () => expect(longest(a, b), equals(exp)));
  }
  group("Fixed tests", () {
    testing("aretheyhere", "yestheyarehere", "aehrsty");
    testing("loopingisfunbutdangerous", "lessdangerousthancoding", "abcdefghilnoprstu");
    testing("inmanylanguages", "theresapairoffunctions", "acefghilmnoprstuy");
    testing("lordsofthefallen", "gamekult", "adefghklmnorstu");
    testing("codewars", "codewars", "acdeorsw");
    testing("agenerationmustconfrontthelooming", "codewarrs", "acdefghilmnorstuw");
  });
}