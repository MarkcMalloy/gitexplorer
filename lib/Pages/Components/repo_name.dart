import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepoName extends StatelessWidget {
  final String name;
  const RepoName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.start,
      style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: const Color(0xff333C52)),
    );
  }
}
