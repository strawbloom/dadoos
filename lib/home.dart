import 'dart:math';
import 'package:flutter/material.dart';

class Dadoos extends StatelessWidget {
  const Dadoos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.pink[200],
        ),
        body: DadoosBody(),
      ),
    );
  }
}

class DadoosBody extends StatefulWidget {
  DadoosBody({super.key});

  @override
  State<DadoosBody> createState() => _DadoosBodyState();
}

class _DadoosBodyState extends State<DadoosBody> {
  int numberLeftDice = 3;
  int numberRightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('assets/images/dado$numberLeftDice.png'),
                onPressed: () {
                  setState(() {
                    numberLeftDice = Random().nextInt(6) + 1;
                    numberRightDice = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),

            Expanded(
              child: TextButton(
                child: Image.asset('assets/images/dado$numberRightDice.png'),
                onPressed: () {
                  setState(() {
                    numberLeftDice = Random().nextInt(6) + 1;
                    numberRightDice = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
