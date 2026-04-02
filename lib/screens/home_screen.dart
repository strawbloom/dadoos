import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dadoos/models/dice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Dice _dice = Dice();

  void rollDice() {
    setState(() {
      _dice.roll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset('assets/images/dado${_dice.leftValue}.png'),
                  onPressed: () {
                    rollDice();
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('assets/images/dado${_dice.rightValue}.png'),
                  onPressed: () {
                    rollDice();
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    child: Text(
                      'click here to roll the dices!',
                      style: GoogleFonts.sourGummy(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
