import "package:test/test.dart";
import "package:dart/katas/to_hex.dart";

void main() {
  test('Basic tests', () {
    expect(to_hex(255, 255, 255), equals('FFFFFF'));
    expect(to_hex(255, 255, 300), equals('FFFFFF'));
    expect(to_hex(0, 0, 0), equals('000000'));
    expect(to_hex(148, 0, 211), equals('9400D3'));
    expect(to_hex(148, -20, 211), equals('9400D3'));
    expect(to_hex(144, 195, 212), equals('90C3D4'));
    expect(to_hex(212, 53, 12), equals('D4350C'));
  });
}
