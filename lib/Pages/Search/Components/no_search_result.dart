import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NoRepositoryResult extends StatelessWidget {
  const NoRepositoryResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [emptyAsset(), emptyText(), subHeaderText()],
      ),
    );
  }

  Widget emptyAsset() {
    return Container(
      alignment: Alignment.center,
      child: SvgPicture.asset("assets/noRepositoriesIcon.svg")
    );
  }

  Widget emptyText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, top: 30),
      child: Text("A little empty",
          style: GoogleFonts.roboto(
              color: Color(0xff333C52),
              fontSize: 16,
              fontWeight: FontWeight.w500)),
    );
  }

  Widget subHeaderText() {
    return Text("Search for a repository and\n save it as favourite",
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(
            color: Color(0xff999DA8),
            fontSize: 14,
            fontWeight: FontWeight.w400));
  }
}
