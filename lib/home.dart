import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dadoos extends StatelessWidget {
  const Dadoos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'dadoos',
              style: GoogleFonts.sourGummy(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.pink[200],
        ),
        body: DadoosBody(),
      ),
    );
  }
}

class DadoosBody extends StatefulWidget {
  const DadoosBody({super.key});

  @override
  State<DadoosBody> createState() => _DadoosBodyState();
}

class _DadoosBodyState extends State<DadoosBody> {
  int numberLeftDice = 3;
  int numberRightDice = 2;

  void rollDice() {
    setState(() {
      numberLeftDice = Random().nextInt(6) + 1;
      numberRightDice = Random().nextInt(6) + 1;
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
                  child: Image.asset('assets/images/dado$numberLeftDice.png'),
                  onPressed: () {
                    rollDice();
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('assets/images/dado$numberRightDice.png'),
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
