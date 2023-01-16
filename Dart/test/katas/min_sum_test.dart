import "package:test/test.dart";
import "package:dart/katas/min_sum.dart";

void main() {
  group("Fixed tests", () {
    test("Testing for [5, 4, 2, 3]", () {
      expect(minSum([5, 4, 2, 3]), equals(22));
    });
    test("Testing for [12, 6, 10, 26, 3, 24]", () {
      expect(minSum([12, 6, 10, 26, 3, 24]), equals(342));
    });
    test("Testing for [9, 2, 8, 7, 5, 4, 0, 6]", () {
      expect(minSum([9, 2, 8, 7, 5, 4, 0, 6]), equals(74));
    });
    test("Testing for [1, 2, 3, 4]", () {
      expect(minSum([1, 2, 3, 4]), equals(10));
    });
    test("Testing for [5, 1, 9, 3, 7, 7, 2, 10]", () {
      expect(minSum([5, 1, 9, 3, 7, 7, 2, 10]), equals(84));
    });
  });
}
