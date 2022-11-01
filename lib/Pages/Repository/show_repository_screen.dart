import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gitexplorer/Model/repo.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Components/back_button.dart';

class ShowRepositoryPage extends StatelessWidget {
  final Repository repo;
  const ShowRepositoryPage({Key? key, required this.repo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReturnButton(),
            repoAsset(),
            repoOrgAndName(),
            language()
          ],
        ),
      ),
    );
  }

  Widget repoAsset() {
    return IconButton(
        onPressed: () {},
        icon: Container(
          height: 100,
          width: 100,
          child: SvgPicture.asset(repo.repoAsset),
        ));
  }

  Widget repoOrgAndName() {
    return Padding(
        padding: EdgeInsets.only(top: 14, bottom: 7),
        child: Text(
          repo.repoName,
          style: GoogleFonts.roboto(
              color: Color(0xff333C52),
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ));
  }

  Widget language(){
    return Text(
      "Javascript",
      style: GoogleFonts.roboto(
          color: Color(0xff999DA8),
          fontWeight: FontWeight.w400,
          fontSize: 14),
    );
  }
}
