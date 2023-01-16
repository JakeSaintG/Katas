import "package:test/test.dart";
import "package:dart/katas/square.dart";

void main() {
  test("Basic tests", () {
    expect(squareSum([1,2]), equals(5));
    expect(squareSum([0,3,4,5]), equals(50));
    expect(squareSum([]), equals(0));
    expect(squareSum([-1,-2]), equals(5));
    expect(squareSum([-1,0,1]), equals(2));
  });
}