import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
This component will display the number of Forks, Issues, Started by & Last Release version of a given repo
 */
class RepoDetails extends StatelessWidget {
  const RepoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffE6E6E6)),
          borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          detailsRow("Forks", "203"),
          lineSpacer(),
          detailsRow("Issues", "266"),
          lineSpacer(),
          detailsRow("Starred by", "30127"),
          lineSpacer(),
          detailsRow("Last release version", "3.1.6"),
        ],
      ),
    );
  }

  Widget detailsRow(String detailName, String value) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [detailText(detailName), detailText(value)],
      ),
    );
  }

  Widget detailText(String txt) {
    return Text(
      txt,
      style: GoogleFonts.roboto(
          fontSize: 16, color: const Color(0xff333C52), fontWeight: FontWeight.w400),
    );
  }

  Widget lineSpacer() {
    return Container(
      height: 1,
      color: const Color(0xffE6E6E6),
    );
  }
}
