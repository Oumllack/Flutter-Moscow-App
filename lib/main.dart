import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Onboarding/third_page.dart';
import 'Onboarding/second_page.dart';
import 'Onboarding/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const FirstPage(),
    );
  }
}
