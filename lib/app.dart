import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dadoos/screens/home_screen.dart';

class Dadoos extends StatelessWidget {
  const Dadoos({super.key});

  static const Color primary = Color(0xFFF48FB1);
  static const Color background = Color(0xFFF8BBD0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dadoos',
      theme: ThemeData(
        scaffoldBackgroundColor: background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          surface: background,
        ),
        textTheme: TextTheme(
          headlineMedium: GoogleFonts.jersey10(
            fontSize: 35,
            color: Colors.white,
          ),
        ),
      ),
      home: const Scaffold(
        body: SafeArea(child: HomeScreen()),
      ),
    );
  }
}
