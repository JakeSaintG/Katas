import "package:test/test.dart";
import "package:dart/katas/multiples_of_3_or_5.dart";

void tester(int n, int exp) =>
    test("Testing for $n", () => expect(mul_of_3_or5(n), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(10, 23);
    tester(20, 78);
    tester(200, 9168);
  });
}
