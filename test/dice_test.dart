import 'dart:math';

import 'package:dadoos/models/dice.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Dice', () {
    test('starts with valid default values in 1..6', () {
      final dice = Dice();
      expect(dice.leftValue, inInclusiveRange(1, 6));
      expect(dice.rightValue, inInclusiveRange(1, 6));
    });

    test('roll() always produces values in 1..6', () {
      final dice = Dice();
      for (var i = 0; i < 200; i++) {
        dice.roll();
        expect(dice.leftValue, inInclusiveRange(1, 6));
        expect(dice.rightValue, inInclusiveRange(1, 6));
      }
    });

    test('roll() is deterministic when given a seeded Random', () {
      final a = Dice(random: Random(42));
      final b = Dice(random: Random(42));
      for (var i = 0; i < 10; i++) {
        a.roll();
        b.roll();
        expect(a.leftValue, b.leftValue);
        expect(a.rightValue, b.rightValue);
      }
    });
  });
}
