import 'package:test/test.dart';
import 'package:dart/katas/chromosome_check.dart';

void main() {
  test('Basic tests', () {
    expect(chromosome_check('XY'), equals("Congratulations! You're going to have a son."));
    expect(chromosome_check('XX'), equals("Congratulations! You're going to have a daughter."));
  });
}