import 'package:flutter/material.dart';
import 'package:gitexplorer/Pages/search_repositories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white
      ),
      home: const SearchRepositoriesScreen()
    );
  }
}