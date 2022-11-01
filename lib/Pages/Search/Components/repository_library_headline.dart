import 'package:flutter/material.dart';

class RepositoryHeadline extends StatelessWidget {
  const RepositoryHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, top: 12),
      child: Text(
        "Repository library",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
