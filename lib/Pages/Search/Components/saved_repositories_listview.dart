import 'package:flutter/material.dart';

class SavedRepositoriesListView extends StatefulWidget {
  const SavedRepositoriesListView({Key? key}) : super(key: key);

  @override
  State<SavedRepositoriesListView> createState() => _SavedRepositoriesListViewState();
}

class _SavedRepositoriesListViewState extends State<SavedRepositoriesListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            "Saved Repositories",
            style: Theme.of(context).textTheme.headline2,
          ),
        )
      ],
    );
  }
}
