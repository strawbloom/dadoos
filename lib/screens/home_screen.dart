import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dadoos/models/dice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final Dice _dice = Dice();
  final Random _shuffleRandom = Random();

  late final AnimationController _controller;
  late final Animation<double> _shake;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _shake = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.addListener(() {
      // Cycle face values during the tumble for visual feedback.
      if (_controller.isAnimating) {
        setState(() {
          _dice.leftValue = _shuffleRandom.nextInt(6) + 1;
          _dice.rightValue = _shuffleRandom.nextInt(6) + 1;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void rollDice() {
    if (_controller.isAnimating) return;
    _controller.forward(from: 0).whenComplete(() {
      setState(_dice.roll);
    });
  }

  Widget _buildDie(int value) {
    return AnimatedBuilder(
      animation: _shake,
      builder: (context, child) {
        final t = _shake.value;
        // Damped sine wave: shake hard at the start, settle by the end.
        final dx = sin(t * pi * 6) * 8 * (1 - t);
        final angle = sin(t * pi * 4) * 0.25 * (1 - t);
        return Transform.translate(
          offset: Offset(dx, 0),
          child: Transform.rotate(angle: angle, child: child),
        );
      },
      child: Image.asset('assets/images/dado$value.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: rollDice,
                child: _buildDie(_dice.leftValue),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: rollDice,
                child: _buildDie(_dice.rightValue),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextButton(
            onPressed: rollDice,
            child: Text(
              'click here to roll the dice!',
              style: GoogleFonts.sourGummy(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
