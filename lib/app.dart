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
        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          centerTitle: true,
          titleTextStyle: GoogleFonts.sourGummy(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: GoogleFonts.sourGummy(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('dadoos')),
        body: const HomeScreen(),
      ),
    );
  }
}
