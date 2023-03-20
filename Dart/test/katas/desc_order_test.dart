import 'package:dart/katas/desc_order.dart';
import 'package:test/test.dart';

void main() {
  group('Fixed tests', () {
    test("Testing for 0", () {
      expect(descendingOrder(0), equals(0));
    });
    test("Testing for 1", () {
      expect(descendingOrder(1), equals(1));
    });
    test("Testing for 111", () {
      expect(descendingOrder(111), equals(111));
    });
    test("Testing for 15", () {
      expect(descendingOrder(15), equals(51));
    });
    test("Testing for 1021", () {
      expect(descendingOrder(1021), equals(2110));
    });
    test("Testing for 123456789", () {
      expect(descendingOrder(123456789), equals(987654321));
    });
  });
}
