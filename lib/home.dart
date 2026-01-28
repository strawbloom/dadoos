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

class DadoosBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numberLeftDice = 3;
    var numberRightDice = 2;

    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('assets/images/dado$numberLeftDice.png'),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('assets/images/dado$numberRightDice.png'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
