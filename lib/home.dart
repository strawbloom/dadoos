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
      color: Colors.red[300],
      child: Row(
        children: [
          Container(
            color: Colors.deepPurpleAccent.shade100,
            child: Column(
              children: [Image.asset('assets/images/dado1.png', width: 300)],
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
