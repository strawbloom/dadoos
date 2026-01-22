import 'package:flutter/material.dart';

class Dadoos extends StatelessWidget {
  const Dadoos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.pink.shade400,
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
      color: Colors.redAccent,
      child: Row(
        children: [
          Container(
            color: Colors.deepPurpleAccent.shade100,
            child: Column(
              children: [Image(image: AssetImage('assets/images/dado1.png'))],
            ),
          ),
          Container(
            color: Colors.blue.shade100,
            child: Column(children: [Text('column 2')]),
          ),
        ],
      ),
    );
  }
}
