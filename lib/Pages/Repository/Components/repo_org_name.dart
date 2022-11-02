import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//This class could be used on both show repo screen and search repo screen as a shared component
class RepoName extends StatelessWidget {
  final String name;
  const RepoName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.roboto(
          color: const Color(0xff333C52),
          fontWeight: FontWeight.w500,
          fontSize: 20),
    );
  }
}
