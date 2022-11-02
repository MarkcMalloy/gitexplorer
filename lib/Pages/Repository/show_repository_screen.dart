import 'package:flutter/material.dart';
import 'package:gitexplorer/Pages/Repository/Components/repo_details.dart';
import 'package:gitexplorer/Pages/Repository/Components/repo_org_name.dart';
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
            RepositoryIcon(asset: repo.asset),
            repoOrgAndName(),
            language(),
            Padding(
              padding: EdgeInsets.all(20),
              child: RepoDetails(),
            )
          ],
        ),
      ),
    );
  }

  Widget repoOrgAndName() {
    return Padding(
        padding: const EdgeInsets.only(top: 14, bottom: 7),
        child: RepoName(
          name: repo.name,
        ));
  }

  Widget language() {
    return Text(
      "Javascript",
      style: GoogleFonts.roboto(
          color: Color(0xff999DA8), fontWeight: FontWeight.w400, fontSize: 18),
    );
  }
}
