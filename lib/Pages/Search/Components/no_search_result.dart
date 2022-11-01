import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoRepositoryResult extends StatelessWidget {
  const NoRepositoryResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [emptyText(), subHeaderText()],
    );
  }

  Widget emptyText() {
    return Text("A little empty",
        style: GoogleFonts.roboto(
            color: Color(0xff333C52),
            fontSize: 16,
            fontWeight: FontWeight.w500));
  }

  Widget subHeaderText(){
    return Text("Search for a repository and save it as favourite",
        style: GoogleFonts.roboto(
            color: Color(0xff999DA8),
            fontSize: 14,
            fontWeight: FontWeight.w400));
  }
}
