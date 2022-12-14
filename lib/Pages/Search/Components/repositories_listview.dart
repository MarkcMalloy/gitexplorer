import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gitexplorer/Model/repo.dart';
import 'package:gitexplorer/Pages/Components/repo_description.dart';
import 'package:gitexplorer/Pages/Components/repo_name.dart';
import 'package:gitexplorer/Pages/Search/Components/results_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Repository/show_repository_screen.dart';

class SavedRepositoriesListview extends StatelessWidget {
  final List<Repository> repos;
  const SavedRepositoriesListview({Key? key, required this.repos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ResultText(numberOfResults: repos.length),
        Expanded(
            child: ListView.builder(
                itemCount: repos.length,
                padding: const EdgeInsets.symmetric(vertical: 24),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      navigateToDetails(context, repos[index]);
                    },
                    child: repoListItem(repos[index]),
                  );
                }))
      ],
    );
  }

  navigateToDetails(BuildContext context, Repository repo) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ShowRepositoryPage(repo: repo),
      ),
    );
  }

  repoListItem(Repository repo) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              flex: 1,
              child: Visibility(
                visible: repo.asset.contains("folder"),
                replacement: SvgPicture.asset(repo.asset),
                child: Container(
                  height: 42,
                  width: 42,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: const Color(0xffE9FAFA),
                      borderRadius: BorderRadius.circular(6.0)),
                  child: SvgPicture.asset(repo.asset),
                ),
              )),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RepoName(name: repo.name),
                  RepoDescription(description: repo.description)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget savedReposWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text(
        "Saved Repositories",
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
