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
            textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                  color: Color(0xff333C52),
                  fontWeight: FontWeight.w500,
                  fontSize: 20), // Petrol color from figma
            ),
            backgroundColor: Colors.white),
        home: const SearchRepositoriesScreen());
  }
}
