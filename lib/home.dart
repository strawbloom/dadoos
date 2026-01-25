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
  const DadoosBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/dado1.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/dado6.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
