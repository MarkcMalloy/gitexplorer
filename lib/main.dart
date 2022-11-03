import 'package:flutter/material.dart';
import 'package:gitexplorer/Pages/Search/search_repositories_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff333C52),
          textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                  color: const Color(0xff333C52),
                  fontWeight: FontWeight.w500,
                  fontSize: 24), // Petrol color from figma
              headline2: GoogleFonts.roboto(
                  color: const Color(0xff333C52),
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
              bodyText1: GoogleFonts.roboto(
                  color: const Color(0xff999DA8),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
              bodyText2: GoogleFonts.roboto(
                  color: const Color(0xff999DA8),
                  fontWeight: FontWeight.w400,
                  fontSize: 16)),
          backgroundColor: Colors.white),
      home: const SearchRepositoriesScreen(),
    );
  }
}
