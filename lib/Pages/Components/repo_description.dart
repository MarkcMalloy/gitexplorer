import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepoDescription extends StatelessWidget {
  final String description;
  const RepoDescription({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.start,
      style: GoogleFonts.roboto(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: const Color(0xff999DA8)),
    );
  }
}
