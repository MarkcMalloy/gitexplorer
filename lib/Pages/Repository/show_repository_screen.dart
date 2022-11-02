import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gitexplorer/Model/repo.dart';
import 'package:gitexplorer/Pages/Repository/Components/repository_icon.dart';
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
            const ReturnButton(),
            RepositoryIcon(asset: repo.repoAsset),
            repoOrgAndName(),
            language()
          ],
        ),
      ),
    );
  }

  Widget repoOrgAndName() {
    return Padding(
        padding: const EdgeInsets.only(top: 14, bottom: 7),
        child: Text(
          repo.repoName,
          style: GoogleFonts.roboto(
              color: const Color(0xff333C52),
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ));
  }

  Widget language(){
    return Text(
      "Javascript",
      style: GoogleFonts.roboto(
          color: Color(0xff999DA8),
          fontWeight: FontWeight.w400,
          fontSize: 18),
    );
  }
}
