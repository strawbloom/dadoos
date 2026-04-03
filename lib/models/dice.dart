import 'dart:math';

class Dice {
  final Random _random = Random();

  int leftValue = 3;
  int centerValue = 2;
  int rightValue = 5;

  void roll() {
    leftValue = _random.nextInt(6) + 1;
    centerValue = _random.nextInt(6) + 1;
    rightValue = _random.nextInt(6) + 1;
  }
}
