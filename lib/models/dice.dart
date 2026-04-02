import 'dart:math';

class Dice {
  final Random _random = Random();

  int leftValue = 3;
  int rightValue = 2;

  void roll() {
    leftValue = _random.nextInt(6) + 1;
    rightValue = _random.nextInt(6) + 1;
  }
}
