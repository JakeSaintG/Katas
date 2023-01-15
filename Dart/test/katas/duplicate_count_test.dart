import 'package:test/test.dart';
import 'package:dart/katas/duplicate_count.dart';

void main() {
  test("add", () {
    expect(duplicate_count(""), equals(0));
    expect(duplicate_count("abcde"), equals(0));
    expect(duplicate_count("aabbcde"), equals(2));
    expect(duplicate_count("aabBcde"), equals(2));
    expect(duplicate_count("Indivisibility"), equals(1));
    expect(duplicate_count("331234"), equals(1));
  });
}