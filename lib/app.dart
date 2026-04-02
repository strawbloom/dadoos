import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dadoos/screens/home_screen.dart';

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
        body: HomeScreen(),
      ),
    );
  }
}
